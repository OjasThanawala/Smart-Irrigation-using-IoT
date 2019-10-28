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
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    DataSet ds = null;
    SqlDataAdapter da = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["msg"] == "add")
            {
                Alert.Show("Record Added Successfully");
            }
            if (Request.QueryString["msg"] == "update")
            {
                Alert.Show("Record Updated Successfully");
            }
            if (Request.QueryString["msg"] == "delete")
            {
                Alert.Show("Record Deleted Successfully");
            }
            if (Request.QueryString["msg"] == "truncate")
            {
                Alert.Show("Truncated Successfully");
            }
        }
    }
    protected void btnTruncate_Click(object sender, EventArgs e)
    {
        string query = "truncate table data";
        Database.Deletedata(query);
        Alert.Show("Record Truncated Successfully");
        Response.Redirect("Manage_Log.aspx?msg=truncate");
    }
}
