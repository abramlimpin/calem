using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        txtPassword.Enabled = true;
        txtFirstName.Enabled = true;
        txtMI.Enabled = true;
        txtLastName.Enabled = true;
        txtContactNo.Enabled = true;
        txtAddress.Enabled = true;
        txtAboutMe.Enabled = true;
        btnEdit.Visible = false;
        fuImage.Enabled = true;
        fuImage.Visible = true;
        btnUpdate.Visible = true;
        btnCancel.Visible = true;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtPassword.Enabled = false;
        txtFirstName.Enabled = false;
        txtMI.Enabled = false;
        txtLastName.Enabled = false;
        txtContactNo.Enabled = false;
        txtAddress.Enabled = false;
        txtAboutMe.Enabled = false;
        btnEdit.Visible = true;
        fuImage.Enabled = false;
        fuImage.Visible = false;
        btnUpdate.Visible = false;
        btnCancel.Visible = false;
        Response.Redirect("~/Account/Profile.aspx");
    }
}