<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuyDVD.aspx.cs" Inherits="SunkaraDVD.BuyDVD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Buy DVDs</h2>
    <p>Here you can purchase DVD number: 
        <asp:Label ID="BuyLabel" runat="server" Text="DVDID"></asp:Label>
    </p>
</asp:Content>
