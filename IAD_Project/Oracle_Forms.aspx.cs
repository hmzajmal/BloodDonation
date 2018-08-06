using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;
using System.Data;

public partial class Oracle_Forms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MyOracle"].ConnectionString);
      //  OracleConnection con = new OracleConnection("DATA SOURCE=localhost:1521/ORCL1;PERSIST SECURITY INFO=True;USER ID=SYSTEM;PASSWORD=Oracle_1");
        con.Open();
        string display = "Select * from client";
        OracleCommand cmd = new OracleCommand(display, con);

        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Write("The data is inserted");
    }
}