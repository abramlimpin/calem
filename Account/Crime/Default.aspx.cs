using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Account_Crime_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetCrimes();
        }
    }

    void GetCrimes()
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
           // ";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Crime");
        lvCrimes.DataSource = ds;
        lvCrimes.DataBind();
        con.Close();
    }
}