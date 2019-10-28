<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>  </title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="style/style.css" />
    <style type="text/css">
        .style1
        {
            width: 248px;
        }
        .style2
        {
            width: 327px;
        }
        .style4
        {
            width: 111px;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <div id="header">
            <div id="logo">
                <h1>
                    <a href="#" style="color: #FFFFFF">Smart Irrigation<span class="logo_colour"></span></a></h1>
                <%-- <div id="logo_text">
                    <h1>
                        <a href="#">INTELLIGENT PATIENT MONITORING SYSTEM<span class="logo_colour"></span></a></h1>
                </div>--%>
            </div>
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            <%--  <div id="banner">
            </div>--%>
            <div id="content">
                <!-- insert the page content here -->
                <h1 class="style5" style="font-size: xx-large">
                    Admin Login
                </h1>
                <table align="center" style="margin-left: 220px" bgcolor="#FFCCCC">
                    <tr>
                        <td class="style4">
                            User Name:-
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtusername" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                                ErrorMessage="Username Is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Password:-
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtpassword" runat="server" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername"
                                ErrorMessage="Password Id Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                        </td>
                        <td class="style1">
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Larger" Height="35px" Text="Login" Width="100px" OnClick="btnLogin_Click" />
                        </td>
                        <td class="style2">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div id="content_footer">
        </div>
        <div id="footer">
            <%-- <p>
                <a href="#">Home</a> | <a href="#">Examples</a> | <a href="#">
                    A Page</a> | <a href="#">Another Page</a> | <a href="#">Contact
                        Us</a></p>--%>
            <%-- <p>
                Copyright &copy; simplestyle_horizon | <a href="http://validator.w3.org/check?uri=referer">
                    HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
                | <a href="http://www.html5webtemplates.co.uk">Simple web templates by HTML5</a></p>--%>
        </div>
    </div>
    </form>
</body>
</html>
