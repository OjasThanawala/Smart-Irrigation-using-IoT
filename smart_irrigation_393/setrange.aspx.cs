using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Manage_Pilgrims : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    DataSet ds = null;
    SqlDataAdapter da = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void SetRange_Click(object sender, EventArgs e)
    {

            
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM NotificationData", con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("update NotificationData set ldr=@ldr,mois=@mois", con);
                cmd.Parameters.AddWithValue("@ldr", Convert.ToInt32(txtTemp.Text));
                cmd.Parameters.AddWithValue("@mois", Convert.ToInt32(txtMois.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                clear();
                Label1.Visible=true;
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into NotificationData (ldr,mois)values(@ldr,@mois)", con);
                cmd.Parameters.AddWithValue("@ldr", Convert.ToInt32(txtTemp.Text));
                cmd.Parameters.AddWithValue("@mois", Convert.ToInt32(txtMois.Text));
                //cmd.Parameters.AddWithValue("@light", Convert.ToInt32(txtLight.Text));               
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                clear();
                Label1.Visible = true;
            }

        }
    public void clear()
    {
        //txtLight.Text =string.Empty;
        txtMois.Text = string.Empty;
        txtTemp.Text = string.Empty;
    }
}
