using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsign_Click(object sender, EventArgs e)
    {
        string query = "select count(*) from signup where userid='" + txtuserid.Text + "' and password='" + txtpass.Text + "'";
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);      
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid E-mail Id or Password')</script>");
        }

    } 
}