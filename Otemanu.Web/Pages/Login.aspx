<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Otemanu.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Otemanu - Login</title>

    <link rel="stylesheet" type="text/css" href="Styles/Otemanu.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:table; margin: 0 auto;">

            <asp:Image ID="OtemanuLogoImage" runat="server" ImageUrl="~/Images/Otemanu_Logo_Small.png"/>

            <p>
                <asp:Literal runat="server" ID="StatusText" />
            </p>

            <div>
                <asp:Table style="margin: 0 auto; margin-bottom:5px;" runat="server">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label style="font: bold 14px arial;" runat="server" AssociatedControlID="UserName">Username</asp:Label></asp:TableCell>
                        <asp:TableCell><asp:TextBox style="width:150px" runat="server" ID="UserName" /></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label style="font: bold 14px arial;" runat="server" AssociatedControlID="Password">Password</asp:Label></asp:TableCell>
                        <asp:TableCell><asp:TextBox style="width:150px" runat="server" ID="Password" TextMode="Password" /></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>   
            </div>     
            
            <div style="margin-bottom:20px; text-align:center">
                <asp:Button runat="server" OnClick="SignIn" Text="Log In" />                
            </div> 
            <div style="text-align:center">
                <asp:HyperLink ID="RegisterLink" NavigateUrl="~/Pages/Register.aspx" Text="Register New User" runat="server"></asp:HyperLink>           
            </div>            
        </div>
   </form>
</body>
</html>