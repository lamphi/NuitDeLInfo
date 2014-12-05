<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Input.aspx.cs" Inherits="antiEbola2010.Input.Input" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Input
    </h2>
    <p>
        <asp:Label ID="lbFN" runat="server" Text="Frist Name"></asp:Label>
        <asp:TextBox ID="txtFN" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbLN" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLN" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbCty" runat="server" Text="Country"></asp:Label>
        <asp:DropDownList ID="ddlCty" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        <asp:LinkButton ID="lnkSave" runat="server" Text="Save" OnClick="lnkSave_Click"></asp:LinkButton>
        <asp:LinkButton ID="lnkClear" runat="server" Text="Clear" OnClick="lnkClear_Click"></asp:LinkButton>
    </p>
</asp:Content>
