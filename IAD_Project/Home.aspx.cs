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
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string insert = "insert into Client (Name,Phone,Address,City,required_Blood) values (@Name,@Phone,@Address,@City,@required_Blood)";
            SqlCommand cmd = new SqlCommand(insert, con); 
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Phone", phone.Text);
            cmd.Parameters.AddWithValue("@Address", address.Text);
            cmd.Parameters.AddWithValue("@City", city.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Required_Blood", blood.SelectedItem.Value);

            cmd.ExecuteNonQuery();
      
            con.Close();
        }

        catch (Exception err)
        {
            Response.Write(err);
        }
        GridView1.Visible = true;
      
    }
}