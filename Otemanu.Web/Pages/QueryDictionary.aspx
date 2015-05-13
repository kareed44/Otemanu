<%@ Page Title="" Language="C#" MasterPageFile="~/Otemanu.Master" AutoEventWireup="true" CodeBehind="QueryDictionary.aspx.cs" Inherits="Otemanu.QueryDictionary" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:SqlDataSource ID="AllQueriesDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="pr_GetAllQueries" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <h2>Query Dictionary</h2>

    <asp:Table runat="server" Width="550px">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Left" VerticalAlign="Top" BorderStyle="Solid" BorderWidth="1.5">
                <!-- div><asp:HyperLink runat="server" NavigateUrl="~/Pages/CreateNewQuery.aspx">Create New Query</asp:HyperLink></div><br /> -->
                <asp:CheckBoxList ID="QueryCheckBoxList" runat="server" DataSourceID="AllQueriesDataSource" DataTextField="Name" DataValueField="Id"></asp:CheckBoxList> 
                <div><asp:HyperLink runat="server" NavigateUrl="~/Pages/CreateNewQuery.aspx">Create New Query</asp:HyperLink></div><br />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>