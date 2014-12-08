using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Badges : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {
        Helper.ValidateUser();
        if (!IsPostBack)
        {
            GetInfo();
            GetBadges();
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

    void GetBadges()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT TOP 12 RankID, Rank, Description, Image FROM Ranks";
        SqlDataReader data = cmd.ExecuteReader();
        lvBadges.DataSource = data;
        lvBadges.DataBind();
        con.Close();
    }
}