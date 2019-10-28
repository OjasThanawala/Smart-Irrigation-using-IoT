<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manage_Log.aspx.cs" Inherits="Manage_Pilgrims"
    MaintainScrollPositionOnPostback="true" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <div>
            <uc1:header ID="header" runat="server" />
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            <div id="content">
                <h1>
                    Manage Log &nbsp&nbsp<asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                </h1>
                <h3>
                    <asp:Button ID="btnTruncate" runat="server" Text="Truncate" Height="29px" OnClick="btnTruncate_Click"
                        Width="98px" />&nbsp;&nbsp;&nbsp;
                </h3>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:green_house_351ConnectionString %>" 
                    SelectCommand="SELECT * FROM [data]">
                </asp:SqlDataSource>
            </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="100%" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="did" HeaderText="did" InsertVisible="False" 
                            ReadOnly="True" SortExpression="did" />
                        <asp:BoundField DataField="ldr" HeaderText="LDR" 
                            SortExpression="ldr" />
                        <asp:BoundField DataField="mois" HeaderText="Moisture" SortExpression="mois" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    </Columns>
                </asp:GridView>
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
