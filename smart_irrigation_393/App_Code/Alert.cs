﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for Alert
/// </summary>
public static class Alert
{
    public static void Show(string message)
    {
        string cleanMessage = message.Replace("'", "\\");
        String jsMsg = String.Format(@"<script type='text/javascript'>alert('{0}')</script>", message);
        Page page = HttpContext.Current.CurrentHandler as Page;
        if (page != null && !page.ClientScript.IsStartupScriptRegistered("alert"))
        {
            page.ClientScript.RegisterStartupScript(typeof(Alert), "alert", jsMsg, false);
        }



    }

}