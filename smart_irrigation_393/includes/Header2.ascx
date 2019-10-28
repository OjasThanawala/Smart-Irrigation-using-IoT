<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header2.ascx.cs" Inherits="includes_Header2" %>
<div id="header">
    <div id="logo">
        <div id="logo_text">
            <h1>
                <a href="#">Green House <span class="logo_colour"></span></a></h1>
            <h2>
            </h2>
        </div>
    </div>
    <div id="menubar">
        <ul id="menu">
            <li class="selected"><a href="Home.aspx">Home</a></li>
            <%--<li><a href="User_Info.aspx">User Info</a></li>--%>
            <li><a href="setrange.aspx">range</a></li>
            <li><a href="User_Login.aspx?msg=logout">Logout</a></li>
        </ul>
    </div>
</div>
