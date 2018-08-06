using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("a.aspx");
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IAD_ConnectionString"].ConnectionString);
     
        try
        {
            con.Open();
            string insert = "insert into Quote (Name,Email,Message) values (@Name,@Email,@Message)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@Name", nm.Text);
            cmd.Parameters.AddWithValue("@Email", em.Text);
            cmd.Parameters.AddWithValue("@Message", msg.Text);


            cmd.ExecuteNonQuery();

            con.Close();
        }

        catch (Exception err)
        {
            Response.Write(err);
        }

        HttpCookie cookie = new HttpCookie("UserInfo");
        cookie["Name"] = nm.Text;
        cookie["Email"] = em.Text;

        cookie.Expires = DateTime.Now.AddMinutes(1);
        Response.Cookies.Add(cookie);

        Response.Redirect("QuoteMessage.aspx");

    }


  

    
}