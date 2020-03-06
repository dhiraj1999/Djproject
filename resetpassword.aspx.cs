using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;


public partial class resetpassword : System.Web.UI.Page
{
    Byte up;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
        string cs= ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
         SqlConnection con = new SqlConnection(cs);
         con.Open();

          string str = "select * from signup ";
          SqlCommand  cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string pass1 = dr.GetString(2);
               if (txtpass.Text == pass1)
               {
                   up = 1;
               }
               else
               {
                   up = 0;
               }
            }
            dr.Close();
            con.Close();
            if (up == 0)
            {
                con.Open();
                str = "update signup set password=@password where userid='" + dr.GetString(0)+ "'";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.Add("@password",txtpass.Text);              
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password changed Successfully')</script>");
            }
            else
            {
               Response.Write("<script>alert('Please enter correct Current password')</script>");
            }

    }
}