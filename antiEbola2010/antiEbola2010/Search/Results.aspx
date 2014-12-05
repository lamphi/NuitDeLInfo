<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Results.aspx.cs" Inherits="antiEbola2010.Search.Results" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Results:
    </h2>
    <asp:Label ID="lbFN" runat="server" Text=""></asp:Label>
    <asp:GridView ID="gvPerson" runat="server">
        
    </asp:GridView>
</asp:Content>
