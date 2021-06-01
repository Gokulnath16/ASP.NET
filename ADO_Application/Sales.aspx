<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="ADO_Application.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Sales Date"></asp:Label>
        <asp:TextBox ID="SDate" runat="server"></asp:TextBox>

        <br />

        <asp:Label ID="Label2" runat="server" Text="Sale Quantity"></asp:Label>
        <asp:TextBox ID="SQty" runat="server"></asp:TextBox>

        <br />

        <asp:Label ID="Label3" runat="server" Text="Product ID"></asp:Label>
        <asp:TextBox ID="PId" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="Button1" OnClick="OnSubmit" runat="server" Text="Button" />

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </form>
</body>
</html>
