<%@ Page Title="" Language="C#" MasterPageFile="~/Otemanu.Master" AutoEventWireup="true" CodeBehind="Dictionaries.aspx.cs" Inherits="Otemanu.Dictionaries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Dictionaries</h2>
    <div><asp:HyperLink runat="server" NavigateUrl="~/Pages/CDSDictionary.aspx">Custom Defined Screens</asp:HyperLink></div>
    <div><asp:HyperLink runat="server" NavigateUrl="~/Pages/QueryDictionary.aspx">Queries</asp:HyperLink></div>
</asp:Content>
