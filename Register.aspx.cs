using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Register : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        string cs= ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
         SqlConnection con = new SqlConnection(cs);
         string query = "insert into signup values(@userid,@username,@password,@dob,@gender,@email)";
         SqlCommand cmd = new SqlCommand(query, con);
             con.Open();
             cmd.Parameters.AddWithValue("@userid", txtuserid.Text);
             cmd.Parameters.AddWithValue("@username", txtusername.Text);
             cmd.Parameters.AddWithValue("@password", txtpass.Text);
             cmd.Parameters.AddWithValue("@dob", txtdob.Text);
             cmd.Parameters.AddWithValue("@gender", rbtngeneder.SelectedValue);
             cmd.Parameters.AddWithValue("@email", txtemail.Text);
             SqlDataReader dr = cmd.ExecuteReader();           
                 Response.Redirect("Login.aspx");
                 con.Close();

             txtuserid.Text = "";
             txtusername.Text = "";
             txtdob.Text = "";
             foreach(ListItem item in rbtngeneder.Items)
                 item.Selected=false;
             txtemail.Text = "";
     }                  
}