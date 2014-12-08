using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Account_Crime_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {
         if (Request.QueryString["ID"] != null)
        {
            int crimeID = 0;
            bool validcrime = int.TryParse(Request.QueryString["ID"].ToString(), out crimeID);

            if (validcrime)
            {
                if (!IsPostBack)
                {
                    GetInfo(crimeID);
                }
            }

            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    void GetInfo(int ID)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "";
        // "(<CrimeID, int,>
        //,<DateReported, datetime,>
        //,<CatID, int,>
        //,<Crime, varchar(200),>
        //,<Description, varchar(max),>
        //,<DateCommitted, datetime,>
        //,<DateConfirmed, datetime,>
        //,<UserID, int,>
        //,<StatusID, int,>)
        // WHERE CrimeID = @CrimeID";
        cmd.Parameters.AddWithValue("@CrimeID", ID);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                ltID.Text = dr["CrimeID"].ToString();
                txtDateReported.Text = dr["DateReported"].ToString();
                ddlCategories.SelectedValue = dr["CatID"].ToString();
                txtCrime.Text = dr["Crime"].ToString();
                txtDesc.Text = dr["Description"].ToString();
                txtDateCommitted.Text = dr["DateCommitted"].ToString();
                txtDateConfirmed.Text = dr["DateConfirmed"].ToString();
                txtUser.Text = dr["User"].ToString();
                txtStatus.Text = dr["Status"].ToString();

            }

            con.Close();
        }
        else
        {
            con.Close();
            Response.Redirect("Default.aspx");
        }
    }
}