<%@ Page Title="Details" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="SunkaraDVD.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Image id="Image2" runat="server" ImageUrl ="~/Images/Lighthouse.jpg" Width="180" Height="180"/>

<h3>Soon you will have a collection of awesome DVDs. Here's how it all works:</h3>
    <ul>
        <li>Choose the DVDs you like from our wide range of selection</li>
        <li>Add them to your cart</li>
        <li>Edit your selection</li>
        <li>Checkout</li>
        <li>Enjoy your DVDs</li>
    </ul>
    <div class="div-child">
        <h3>Details about the movie you selected</h3>
        <p>The The DVDID is:  
            <asp:Label ID="LabelDVDID" runat="server" Text="DVDID" ValidateRequestMode="Enabled"></asp:Label>
        </p>
        <p>A smart but sensible new graduate lands a job as an assistant to Miranda Priestly, the demanding editor-in-chief of a high fashion magazine.
    </div>
</asp:Content>
