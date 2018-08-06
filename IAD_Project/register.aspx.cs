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
   SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IAD_ConnectionString"].ConnectionString);
 //  SqlConnection con = new SqlConnection(Conf)
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
            try
            {
                con.Open();
                string insert = "insert into Record (Name,Email,BloodGroup,Address,Phone) values (@Name,@Email,@BloodGroup,@Address,@Phone)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@BloodGroup", BloodGroup.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Address", address.Text);
                cmd.Parameters.AddWithValue("@Phone", phone.Text);
            
                cmd.ExecuteNonQuery();
              
                con.Close();
            }

            catch (Exception err)
            {
                Response.Write(err);
            }
        

        Response.Redirect("a.aspx"); 
    }

    protected void name_TextChanged(object sender, EventArgs e)
    {

    }
}