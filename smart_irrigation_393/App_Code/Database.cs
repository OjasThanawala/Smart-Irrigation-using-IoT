using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Database
/// </summary>
public static class Database
{
    public static string cs = WebConfigurationManager.ConnectionStrings["connection_string"].ConnectionString;

    public static DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(cs);
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        con.Open();
        da.Fill(dt);
        con.Close();
        return dt;

    }
    public static void InsertData(string query)
    {
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public static void Updatedata(string query)
    {
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public static void Deletedata(string query)
    {
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }



}