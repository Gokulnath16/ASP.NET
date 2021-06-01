<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteData.aspx.cs" Inherits="ADO_Application.DeleteData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Label runat="server" Text="Field Name"></asp:Label>
         <asp:TextBox ID ="fieldName" runat ="server"></asp:TextBox>  
        
        <asp:Label runat="server" Text="Field value"></asp:Label>
         <asp:TextBox ID ="fieldValue" runat ="server"></asp:TextBox>  

        <asp:Label runat="server" Text="Name"></asp:Label>
        <!-- <asp:TextBox ID ="d_name" runat ="server"></asp:TextBox> -->
         <asp:TextBox ID ="u_name" runat ="server"></asp:TextBox>  
        

        <br />

        <asp:Button runat="server" OnClick="OnSubmit" Text="Button"></asp:Button>
       
        <br />
        <br />
        
        <asp:Label ID="lbltex" runat="server" Text="Label"></asp:Label>


    </form>
</body>
</html>
