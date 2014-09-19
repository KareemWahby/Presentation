<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="Clubs_Database.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClubsConnectionString %>" SelectCommand="SELECT [id], [name] FROM [Club]"></asp:SqlDataSource>
        
    </div>
       
    </form>
</body>
</html>
