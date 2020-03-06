using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string query = "insert into FeedBack values(@name,@address,@class,@year,@country,@email,@mobile,@feedback)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@address", txtadd.Text);
        cmd.Parameters.AddWithValue("@class", txtclass.Text);
        cmd.Parameters.AddWithValue("@year", ddyear.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@country",txtcountry.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@feedback", txtfeedback.Text);
        cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtadd.Text = "";
        txtclass.Text = "";
        txtcountry.Text = "";
        foreach (ListItem item in ddyear.Items)
            item.Selected = false;
        txtemail.Text = "";
        txtmobile.Text = "";
        txtfeedback.Text = "";

    }
}