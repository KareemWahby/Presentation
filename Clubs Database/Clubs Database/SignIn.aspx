<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Clubs_Database.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clubs Database</title>
</head>
<body>
    <img src="Images/pres.jpg" />
    <form id="form1" runat="server">
        <asp:TextBox ID="username" runat="server" placeholder="user name"></asp:TextBox>
        <br />   
        <asp:TextBox ID="password" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
         <br />
        <asp:Button ID="user_sign_in" runat="server" Text="Sign in" onclick="signin" />
         <asp:Label ID="L1" runat="server" Text=""></asp:Label>
    </form>
    
</body>
</html>
