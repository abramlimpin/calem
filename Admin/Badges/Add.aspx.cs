using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Badges_Add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "INSERT INTO Ranks VALUES (@Rank, @Description, @Image)";
        cmd.Parameters.AddWithValue("@Rank", txtRank.Text);
        cmd.Parameters.AddWithValue("@Description", txtDesc.Text);
        cmd.Parameters.AddWithValue("@Image", fuImage.FileName);
        fuImage.SaveAs(Server.MapPath("~/img/badges/" + fuImage.FileName));
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Default.aspx");
    }
}