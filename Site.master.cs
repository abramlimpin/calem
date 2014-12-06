using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Site : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            alerts.Visible = true;
            messages.Visible = true;
            guest.Visible = false;
            user.Visible = true;
            GetInfo();
        }
        else
        {
            alerts.Visible = false;
            messages.Visible = false;
            guest.Visible = true;
            user.Visible = false;
        }
    }

    void GetInfo()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT UserID, Username, Email, Location, Image FROM Users WHERE UserID=@UserID";
        cmd.Parameters.AddWithValue("@UserID", Session["userid"].ToString());
        SqlDataReader data = cmd.ExecuteReader();
        while (data.Read())
        {
            ltUser.Text = data["Username"].ToString();
        }
        con.Close();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT UserID, UserLevel FROM Users WHERE (Email=@Username OR Username=@Username) AND " +
            "Password=@Password";
        cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
        cmd.Parameters.AddWithValue("@Password", Helper.CreateSHAHash(txtPassword.Text));
        SqlDataReader data = cmd.ExecuteReader();
        if (data.HasRows)
        {
            while (data.Read())
            {
                Session["userid"] = data["UserID"].ToString();
                Session["level"] = data["UserLevel"].ToString();
            }
            con.Close();
            Response.Redirect("~/Default2.aspx");
        }
        else
        {
            con.Close();
            Helper.Show("Invalid user credentials!");
        }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "INSERT INTO Users VALUES (@UserLevel, @UserName, @Email, @Password, @Location, @Image, @Status); "+
            "SELECT TOP 1 UserID, UserLevel FROM Users ORDER BY UserID DESC";
        cmd.Parameters.AddWithValue("@UserLevel", "User");
        cmd.Parameters.AddWithValue("@Username", txtS_Username.Text.ToLower());
        cmd.Parameters.AddWithValue("@Email", txtS_Email.Text);
        cmd.Parameters.AddWithValue("@Password", Helper.CreateSHAHash(txtS_Password.Text));
        cmd.Parameters.AddWithValue("@Location", "");
        cmd.Parameters.AddWithValue("@Image", "unknown.png");
        cmd.Parameters.AddWithValue("@Status", "Active");
        int userID = (int)cmd.ExecuteScalar();
        Session["userid"] = userID.ToString();
        con.Close();

        Response.Redirect("~/Default.aspx");
    }
}
