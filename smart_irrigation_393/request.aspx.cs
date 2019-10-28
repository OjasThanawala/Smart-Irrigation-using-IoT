using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Text;
using System.Net.Mail;

public partial class request : System.Web.UI.Page
{
    SqlConnection _Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int ldr,mois;
           
            mois = Convert.ToInt32(Request.QueryString["mois"].ToString());
            ldr = Convert.ToInt32(Request.QueryString["ldr"].ToString());
            
            using (SqlCommand cmd = new SqlCommand("insert into dbo.data(ldr,mois,date)values(@ldr,@mois,@date)", _Conn))
            {
                cmd.Parameters.AddWithValue("@ldr", ldr);
                cmd.Parameters.AddWithValue("@mois", mois);
                
               cmd.Parameters.AddWithValue("@date",DateTime.Now);                
                _Conn.Open();
                var Result = cmd.ExecuteNonQuery();
                _Conn.Close();
                SqlCommand cmdGet = new SqlCommand("select * from NotificationData", _Conn);
                SqlDataAdapter daGet = new SqlDataAdapter(cmdGet);
                DataTable dt = new DataTable();
                daGet.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    //int temp1 = Convert.ToInt32(dt.Rows[0]["ldr"]);
                    int mois1 = Convert.ToInt32(dt.Rows[0]["mois"]);
                    //int light1 = Convert.ToInt32(dt.Rows[0]["light"]);
                    //Response.Write("success:" + sw1);
                    if (mois > mois1)
                    {
                        Response.Write("success1");
                        //email(mail, pass);
                    }
                    else
                    {
                        Response.Write("success0");
                    }
                    
                }
            }
        }
    }
    protected static string fileGetContents(string fileName)
    {
        var sContents = string.Empty;
        var me = string.Empty;
        try
        {
            if (fileName.ToLower().IndexOf("http:") > -1)
            {
                var wc = new WebClient();
                var response = wc.DownloadData(fileName);
                sContents = Encoding.ASCII.GetString(response);

            }
            else
            {
                var sr = new StreamReader(fileName);
                sContents = sr.ReadToEnd();
                sr.Close();
            }
        }
        catch { sContents = "unable to connect to server "; }
        return sContents;
    }
    public void email(string mailid, string pwd)
    {
        try
        {
            SmtpClient smtpserver = new SmtpClient();
            MailMessage mail = new MailMessage();
            smtpserver.Credentials = new System.Net.NetworkCredential("iotgreenhouse123@gmail.com", "iotgreenhouse12345");
            smtpserver.Port = 587;
            smtpserver.EnableSsl = true;
            smtpserver.Host = "smtp.gmail.com";
            mail = new MailMessage();
            mail.From = new MailAddress("iotgreenhouse123@gmail.com");
            mail.To.Add(mailid);
            mail.Subject = "Registration Details";
            mail.Body = "Somthing wrong with your temp,moisture,light. please check the green house";
            smtpserver.Send(mail);
        }
        catch (Exception e1)
        {
            
        }
    }
}