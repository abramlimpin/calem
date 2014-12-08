using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Account_Crime_Submit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {
        Helper.ValidateUser();
        if (!IsPostBack)
        {
            GetCategories();
        }
    }

    void GetCategories()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT CatID, Category FROM Categories";
        SqlDataReader dr = cmd.ExecuteReader();
        ddlCategory.DataSource = dr;
        ddlCategory.DataTextField = "Category";
        ddlCategory.DataValueField = "CatID";
        ddlCategory.DataBind();
        con.Close();
    }

    protected void btSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "INSERT INTO Crimes VALUES (@DateReported, @CatID, @Crime, @Description, @DateCommitted, " +
            "@DateConfirmed, @UserID, @Location, @Latitude, @Longitude, @StatusID)";
        cmd.Parameters.AddWithValue("@DateReported", DateTime.Now);
        cmd.Parameters.AddWithValue("@CatID", ddlCategory.SelectedValue);
        cmd.Parameters.AddWithValue("@Crime", txtCrime.Text);
        cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
        cmd.Parameters.AddWithValue("@DateCommitted", txtCrimeDate.Text);
        cmd.Parameters.AddWithValue("@DateConfirmed", DBNull.Value);
        cmd.Parameters.AddWithValue("@UserID", Session["userid"].ToString());
        cmd.Parameters.AddWithValue("@Location", txtLocation.Text);
        cmd.Parameters.AddWithValue("@Latitude", txtLatitude.Text);
        cmd.Parameters.AddWithValue("@Longitude", txtLongitude.Text);
        cmd.Parameters.AddWithValue("@StatusID", 1);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/Default.aspx");

    }
}