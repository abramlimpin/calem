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
        if (!IsPostBack)
        {
            //GetCategories();
            
        }
    }

    void GetCategories()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT CatID, Category FROM Category";
        SqlDataReader dr = cmd.ExecuteReader();
        ddlCategory.DataSource = dr;
        ddlCategory.DataTextField = "Category";
        ddlCategory.DataValueField = "CatID";
        ddlCategory.DataBind();
        con.Close();
    }

}