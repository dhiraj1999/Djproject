using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        string id,pass,query,id1, pass1;
        id= txtuserid.Text;
        pass = txtpass.Text;       

        query = "select * from Admin";
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand cmd = new SqlCommand(query,con);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {

            id1 = dr.GetString(0) ;
            pass1 = dr.GetString(1);
            if (id == id1 && pass == pass1)
            {
                Application["txtuserid"] = "admin";
                Response.Redirect("AddNotice.aspx");
            }
            else
            {
             lbl3.Visible = true;
             Response.Write("<Script>alert('Invalid userid & password')</script>");
            }

        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}