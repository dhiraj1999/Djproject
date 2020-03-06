using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgetPassword : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
      /* SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("dhiraj2067590@gmail.com", "dhir@j111");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello Dhiraj  ";
        msg.Body = "Hi";
        string toaddress = txtemail.Text;
        msg.To.Add(toaddress);
        string fromaddress = "dhiraj2067590@gmail.com";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
            lblresult.Text = "Your Email Has Been Registered with Us";
            txtemail.Text = "";
        }
        catch
        {
            throw;
        }*/
   
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string query = "select password from signup where userid='" + txtuserid.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(query,con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
       if(dt.Rows.Count.ToString()=="1")
       {
         
           if(txtpass.Text==txtconfirm.Text)
           {
               con.Open();
               query="update signup set password='"+txtconfirm.Text+"' where userid='"+txtuserid.Text+"' ";
               SqlCommand cmd = new SqlCommand(query,con);
               cmd.ExecuteNonQuery();
               con.Close();
               Response.Write("<script>alert('sucessfully updated')</script>");
               txtuserid.Text = "";
               txtpass.Text = "";
               txtconfirm.Text = "";
           }
           else
           {
                 Response.Write("<script>alert('password should not match')</script>");
           }
        }
       else
        {
            Response.Write("<script>alert('Invalid userid')</script>");
        }
    
   }
}