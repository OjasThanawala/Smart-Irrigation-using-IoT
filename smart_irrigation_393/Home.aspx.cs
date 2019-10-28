using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Rose.aspx");
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mango.aspx");
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Apple.aspx");
    }
}