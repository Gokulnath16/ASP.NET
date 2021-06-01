<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormDisplay.aspx.cs" Inherits="ADO_Application.FormDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Button ID="Button1" OnClick="Button_click" runat="server" Text="Button" />

        <br /> <br />

        <asp:GridView ID="GridView1" name="GridView1" runat="server"  ViewStateMode="Enabled" AutoGenerateColumns="true" Width="100%">    </asp:GridView>

        <br /> <br />

        <asp:DropDownList ID="DropDownList1" runat="server">  <asp:ListItem Value="">Please Select after button click</asp:ListItem>   </asp:DropDownList>

        <br /> <br />

        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>


        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>




    </form>
</body>
</html>
