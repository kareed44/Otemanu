<%@ Page Title="" Language="C#" MasterPageFile="~/Otemanu.Master" AutoEventWireup="true" CodeBehind="CreateNewQuery.aspx.cs" Inherits="Otemanu.CreateNewQuery" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="QueryTypeDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="EXEC pr_GetAllQueryTypes"></asp:SqlDataSource>

    <h2>Create New Query</h2>
    <asp:Label runat="server" Text="Name"></asp:Label><asp:TextBox ID="QueryNameTextBox" runat="server"></asp:TextBox>
    <asp:Label runat="server" Text="Description"></asp:Label><asp:TextBox ID="QueryDescriptionTextBox" runat="server"></asp:TextBox>
    <asp:DropDownList ID="QueryTypeDropDownList" runat="server" AutoPostBack="True" DataSourceID="QueryTypeDataSource" DataTextField="Type" DataValueField="Type"></asp:DropDownList><br/><br/>
    <asp:Label runat="server" Text="Label"></asp:Label><asp:TextBox ID="QueryLabelTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="CreateNewQueryButton" runat="server" Text="Create" OnClick="CreateNewQueryButton_Click"/>
</asp:Content>
