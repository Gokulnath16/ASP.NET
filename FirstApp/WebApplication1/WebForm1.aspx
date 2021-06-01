<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!--  -->


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <title><%: Page.Title %> - My WebForm</title>

</head>
<body style="overflow-x: hidden">

    <form id="form1" name ="form1" runat="server">
        
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4"></div>
                <div class ="col-md-4">
                    <div class="col-sm-offset-3">
                        <div class="row">
                            <asp:Label ID="Label1" for="sell" runat="server" Text="Label"><b>Number 1</b></asp:Label>    <br />
                            <asp:TextBox ID="TextBox1" Class="form-control" runat="server"></asp:TextBox>

                            <br />
                        </div>

                        <div class="row">
                            <asp:Label for="sell" ID="Label2" runat="server" Text="Label"><b>Number 2</b></asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                        </div>

                        <div class="row">
                            <asp:Label ID="Label4" runat="server" Text=""><b>Sum : </b></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            <br />
                        </div>

                        <div class="row">
                            <br /><br />
                              &nbsp;<asp:Button Class="btn btn-success" ID="Button1" runat="server" OnClick="Button_click" Text="Button" />
                        </div>

                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>

         </div>
       
    </form>

    




    <script>

        function fun() {
            //console.log('hh');
             let x = document.forms['form1']['num1'].value;
            let y = document.forms['form1']['num2'].value;
            //console.log(x + y);

            document.getElementById('sum').value = Number(x) + Number(y);

        }

    </script>




    


</body>
</html>
