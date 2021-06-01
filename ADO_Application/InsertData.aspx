<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertData.aspx.cs" Inherits="ADO_Application.InsertData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <h1>Add Member</h1>

        <asp:Label ID="Label1" runat="server" Text="Actor Name"></asp:Label>
        <asp:TextBox ID="a_name" runat="server"></asp:TextBox>

        <br />

         <asp:Label ID="Label2" runat="server" Text="Actor Address"></asp:Label>
        <asp:TextBox ID="a_address" runat="server"></asp:TextBox>

        <br />

        <asp:Button ID="Button2" OnClick="On_Button_Click" runat="server" Text="Button" />

        <br />

        <asp:Label ID="lbltex" runat="server" Text="Label"></asp:Label>

        <br />
        
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </form>


</body>
</html>
