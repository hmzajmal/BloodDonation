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

       

        HttpCookie cookie = Request.Cookies.Get("UserInfo");

        if (cookie != null)
        {
            Label4.Text = cookie["Name"];
            Label5.Text = cookie["Email"];

        }

        else
        {
            Response.Redirect("Home.aspx");
        }
        Response.Write("Your Message is Submitted");

    }
}