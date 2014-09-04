<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finance.aspx.cs" Inherits="Clubs_Database.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Finance</title>
</head>
<body>
    <h1>Finance</h1>
    <form id="form1" runat="server">
    <div>
        <div>
            <h2>Total</h2>
            <asp:Label runat="server" Text="Total Contracts: "></asp:Label>
            <asp:Label ID="totalContracts" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label runat="server" Text="Total Marketing Rights: "></asp:Label>
            <asp:Label ID="TotalMarketing" runat="server" Text=" LE"></asp:Label>
            <asp:Label runat="server" Text="Total TV Rights: " Style="margin-left:10px"></asp:Label>
            <asp:Label ID="TotalTv" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Label runat="server" Text="Paid: "></asp:Label>
            <asp:Label ID="TotalPaid" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label runat="server" Text="Due: "></asp:Label>
            <asp:Label ID="TotalDue" runat="server" Text=" LE"></asp:Label>
        </div>
        <div>
            <h2>Season 1</h2>
            <asp:Label runat="server" Text="Total Season 1: "></asp:Label>
            <asp:Label ID="s1tot" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label runat="server" Text="Total Season1 Marketing Rights: "></asp:Label>
            <asp:Label ID="s1mr" runat="server" Text=" LE"></asp:Label>
            <asp:Label runat="server" Text="Total Season1 TV Rights: " Style="margin-left:10px"></asp:Label>
            <asp:Label ID="s1tvr" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Label runat="server" Text="Paid: "></asp:Label>
            <asp:Label ID="s1paid" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label runat="server" Text="Due: "></asp:Label>
            <asp:Label ID="s1due" runat="server" Text=" LE"></asp:Label>
        </div>

        <div>
            <h2>Season 2</h2>
            <asp:Label ID="Label1" runat="server" Text="Total Season 2: "></asp:Label>
            <asp:Label ID="s2tot" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label ID="Label2" runat="server" Text="Total Season2 Marketing Rights: "></asp:Label>
            <asp:Label ID="s2mr" runat="server" Text=" LE"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Total Season2 TV Rights: " Style="margin-left:10px"></asp:Label>
            <asp:Label ID="s2tvr" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Label ID="Label4" runat="server" Text="Paid: "></asp:Label>
            <asp:Label ID="s2paid" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label ID="Label5" runat="server" Text="Due: "></asp:Label>
            <asp:Label ID="s2due" runat="server" Text=" LE"></asp:Label>
        </div>

        <div>
            <h2>Season 3</h2>
            <asp:Label ID="Label6" runat="server" Text="Total Season 3: "></asp:Label>
            <asp:Label ID="s3tot" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label ID="Label7" runat="server" Text="Total Season3 Marketing Rights: "></asp:Label>
            <asp:Label ID="s3mr" runat="server" Text=" LE"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="Total Season3 TV Rights: " Style="margin-left:10px"></asp:Label>
            <asp:Label ID="s3tvr" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Label ID="Label9" runat="server" Text="Paid: "></asp:Label>
            <asp:Label ID="s3paid" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label ID="Label10" runat="server" Text="Due: "></asp:Label>
            <asp:Label ID="s3due" runat="server" Text=" LE"></asp:Label>
        </div>

        <div>
            <h2>Season 4</h2>
            <asp:Label ID="Label11" runat="server" Text="Total Season 4: "></asp:Label>
            <asp:Label ID="s4tot" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label ID="Label12" runat="server" Text="Total Season4 Marketing Rights: "></asp:Label>
            <asp:Label ID="s4mr" runat="server" Text=" LE"></asp:Label>
            <asp:Label ID="Label13" runat="server" Text="Total Season4 TV Rights: " Style="margin-left:10px"></asp:Label>
            <asp:Label ID="s4tvr" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Label ID="Label14" runat="server" Text="Paid: "></asp:Label>
            <asp:Label ID="s4paid" runat="server" Text=" LE"></asp:Label>
            <br/>
            <asp:Label ID="Label15" runat="server" Text="Due: "></asp:Label>
            <asp:Label ID="s4due" runat="server" Text=" LE"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
