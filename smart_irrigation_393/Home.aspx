<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .styleT
        {
            width: 398px;
        }
    </style>
</head>
<body>
    <form runat="server">
    <div id="main">
        <div>
            <uc1:header ID="header" runat="server" />
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            <div id="content">
                <%--<img src="images/various-weather.jpg" />--%>
                &nbsp;<!-- insert the page content here --><h1 style="font-size: x-large">
                    Welcome
                </h1>
                <p style="font-size: large">
                    
                </p>
                <p>
                    &nbsp;</p>
            </div>
        </div>
        <div id="content_footer">
        </div>
        <div id="footer">
            <p>
                <a href="#">Home</a> | <a href="#">Examples</a> | <a href="#">A Page</a> | <a href="#">
                    Another Page</a> | <a href="#">Contact Us</a></p>
            <p>
                Copyright &copy; simplestyle_horizon | <a href="http://validator.w3.org/check?uri=referer">
                    HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
                | <a href="http://www.html5webtemplates.co.uk">Simple web templates by HTML5</a></p>
        </div>
    </div>
    </form>
</body>
</html>
