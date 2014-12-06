using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetCurrentLocation();
        }
    }

    void GetCurrentLocation()
    {
        Session["latitude"] = "14.5588542";
        Session["longitude"] = "121.0174931";
    }
}