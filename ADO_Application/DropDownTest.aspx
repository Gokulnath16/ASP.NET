<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownTest.aspx.cs" Inherits="ADO_Application.DropDownTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="actor_Name">actor Name</asp:ListItem>
            <asp:ListItem Value="actor_Address">actor Address</asp:ListItem>

        </asp:DropDownList>

        <asp:Button ID="Button1" OnClick="Click" runat="server" Text="Button" />


    </form>
</body>
</html>
