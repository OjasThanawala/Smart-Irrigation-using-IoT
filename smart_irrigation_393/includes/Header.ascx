<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="includes_Header" %>
<div id="header">
    <div id="logo">
        <h1 style="font-size: x-large">
            <a href="#" style="color: White">Smart Irrigation<span class="logo_colour"></span>
            </a>
        </h1>
    </div>
    <div id="menubar">
        <ul id="menu">
            <li><a href="Home.aspx">Home</a></li>
            <%--<li><a href="Manage_Users.aspx">Manage Users</a></li>--%>
            <li><a href="Manage_Log.aspx">Data Log</a></li>
            <li><a href="setrange.aspx">Range</a></li>
            <li><a href="Admin_Login.aspx?msg=logout">Logout</a></li>
        </ul>
    </div>
</div>
