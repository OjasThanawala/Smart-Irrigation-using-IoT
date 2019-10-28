<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setrange.aspx.cs" Inherits="Manage_Pilgrims"
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
                    &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp;Update New Range</h1>
                <table align="center" style="margin: 0px auto; height: 300px" width="100%">
                    <tr>
                        <td class="style2">
                            LDR</td>
                        <td class="style1">
                            <asp:TextBox ID="txtTemp" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTemp"
                                ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtTemp"
                                runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            MOiSTURE</td>
                        <td class="style1">
                            <asp:TextBox ID="txtMois" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server"
                                ControlToValidate="txtMois" ErrorMessage="Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtMois"
                                runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <%--<td class="style2">
                            LIGHT 
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtLight" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="txtLight" ErrorMessage="Required."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtLight"
                                runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>--%>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                        </td>
                        <td class="style1">
                            <asp:Button ID="SetRange" runat="server" CausesValidation="true" Text="Set Range" Height="30px" Width="80px"
                                OnClick="SetRange_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Button ID="btnCancel" runat="server" CausesValidation="false" Text="Cancel" Height="30px" Width="80px" />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                ForeColor="Green" Text="Ranged Set"></asp:Label>
                        </td>
                    </tr>
                </table>
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
