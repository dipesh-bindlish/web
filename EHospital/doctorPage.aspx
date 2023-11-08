﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorPage.aspx.cs" Inherits="EHospital.doctorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor login page</title>
        <style>
        
div {
    text-align: center;
    margin: 0 auto;
    max-width: 300px;
}

a {
    text-decoration: none;
    color: #003366;
    transition: color 0.3s;
}

a:hover {
    color: #0056b3;
}

/* Style text input and button */
input[type="text"], input[type="password"], button {
    padding: 8px;
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 5px 0;
    transition: border-color 0.3s;
}

input[type="text"]:focus, input[type="password"]:focus, button:focus {
    border-color: #007bff;
}

/* Style the submit button */
button {
    background-color: #003366;
    color: #FFF;
    cursor: pointer;
}

button:hover {
    background-color: #FFF;
}

#Label1{
     font-family: Arial, sans-serif;
    font-size: 25px;
    font-weight: bold;
    color:#003366;
    text-align: center;
   
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Login Page"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
        <br />
        <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="passtxt" runat="server" TextMode="Password" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="LogIn" />
        <br />
       <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
    </div>
</form>

</body>
</html>
