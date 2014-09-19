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
        <asp:Button ID="Totbtn" runat="server" Text="Total" OnClick="Totbtn_Click" /> <asp:Button ID="S1btn" runat="server" Text="Season 1" OnClick="S1btn_Click" /><asp:Button ID="S2btn" runat="server" Text="Season 2" OnClick="S2btn_Click" /><asp:Button ID="S3btn" runat="server" Text="Season 3" OnClick="S3btn_Click" /><asp:Button ID="S4btn" runat="server" Text="Season 4" OnClick="S4btn_Click" />
        <br />
        <asp:MultiView ID="MV" runat="server" ActiveViewIndex="0" Visible="false">
            <asp:View ID="View1" runat="server">
                <h2>Total</h2>
                <asp:Label ID="Label16" runat="server" Text="Total Contracts: "></asp:Label>
                <asp:Label ID="totalContracts" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label17" runat="server" Text="Total Marketing Rights: "></asp:Label>
                <asp:Label ID="TotalMarketing" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label18" runat="server" Text="Total TV Rights: " Style="margin-left:10px"></asp:Label>
                <asp:Label ID="TotalTv" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label19" runat="server" Text="Paid: "></asp:Label>
                <asp:Label ID="TotalPaid" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label20" runat="server" Text="Due: "></asp:Label>
                <asp:Label ID="TotalDue" runat="server" Text=""></asp:Label>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <h2>Season 1</h2>
                <asp:Label ID="Label21" runat="server" Text="Total Season 1: "></asp:Label>
                <asp:Label ID="s1tot" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label22" runat="server" Text="Total Season1 Marketing Rights: "></asp:Label>
                <asp:Label ID="s1mr" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label23" runat="server" Text="Total Season1 TV Rights: " Style="margin-left:10px"></asp:Label>
                <asp:Label ID="s1tvr" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label24" runat="server" Text="Paid: "></asp:Label>
                <asp:Label ID="s1paid" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label25" runat="server" Text="Due: "></asp:Label>
                <asp:Label ID="s1due" runat="server" Text=""></asp:Label>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <h2>Season 2</h2>
                <asp:Label ID="Label1" runat="server" Text="Total Season 2: "></asp:Label>
                <asp:Label ID="s2tot" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Total Season2 Marketing Rights: "></asp:Label>
                <asp:Label ID="s2mr" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Total Season2 TV Rights: " Style="margin-left:10px"></asp:Label>
                <asp:Label ID="s2tvr" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label4" runat="server" Text="Paid: "></asp:Label>
                <asp:Label ID="s2paid" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label5" runat="server" Text="Due: "></asp:Label>
                <asp:Label ID="s2due" runat="server" Text=""></asp:Label>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <h2>Season 3</h2>
                <asp:Label ID="Label6" runat="server" Text="Total Season 3: "></asp:Label>
                <asp:Label ID="s3tot" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label7" runat="server" Text="Total Season3 Marketing Rights: "></asp:Label>
                <asp:Label ID="s3mr" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="Total Season3 TV Rights: " Style="margin-left:10px"></asp:Label>
                <asp:Label ID="s3tvr" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label9" runat="server" Text="Paid: "></asp:Label>
                <asp:Label ID="s3paid" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label10" runat="server" Text="Due: "></asp:Label>
                <asp:Label ID="s3due" runat="server" Text=""></asp:Label>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <h2>Season 4</h2>
                <asp:Label ID="Label11" runat="server" Text="Total Season 4: "></asp:Label>
                <asp:Label ID="s4tot" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label12" runat="server" Text="Total Season4 Marketing Rights: "></asp:Label>
                <asp:Label ID="s4mr" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="Total Season4 TV Rights: " Style="margin-left:10px"></asp:Label>
                <asp:Label ID="s4tvr" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label14" runat="server" Text="Paid: "></asp:Label>
                <asp:Label ID="s4paid" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label15" runat="server" Text="Due: "></asp:Label>
                <asp:Label ID="s4due" runat="server" Text=""></asp:Label>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
