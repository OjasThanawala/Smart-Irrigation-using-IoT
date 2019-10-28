using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["msg"]=="logout")
        {
            Session["admin_id"] = null;
            Alert.Show("You are Logout Successfully ");
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string query = "select * from admin_master where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
        DataTable admin_data = Database.GetData(query);
        if (admin_data.Rows.Count > 0)
        {
            Session["admin_id"] = Convert.ToInt32(admin_data.Rows[0]["aid"]);
            Response.Redirect("Home.aspx");
        }
        else
        {
            Alert.Show("Invalid Username or Password");
            txtusername.Text = txtpassword.Text = string.Empty;
        }
    }
}