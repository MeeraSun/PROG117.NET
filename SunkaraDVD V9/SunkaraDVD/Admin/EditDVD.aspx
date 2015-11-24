<%@ Page Title="EditDVD" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditDVD.aspx.cs" Inherits="SunkaraDVD.Admin.EditDVD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image id="Image2" runat="server" ImageUrl ="~/Images/Koala.jpg" Width="180" Height="180"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="LogoutButton" runat="server" OnClick="LogoutButton_Click" Text="Logout" />

<h3>Edit our current list of DVDs here</h3>
  
 <p>
    <asp:Label ID="dbErrorLabel" ForeColor="Red" runat="server" />
  </p>
Select DVD to update or delete:&nbsp;&nbsp;
    <asp:DropDownList ID="DVDsList" runat="server" Width="100px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SelectButton" Text="Select" runat="server" 
      onclick="selectButton_Click" Width="82px" />
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Title:"  class="widelabel"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" class="widelabel"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Artist:" class="widelabel"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" class="widelabel"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Rating:" class="widelabel"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" class="widelabel"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Price:" class="widelabel"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" class="widelabel"></asp:TextBox>
    <br />
    &nbsp;<p>

    <asp:Button ID ="updateButton" Text ="Update DVD" Width ="126px" 
          Enabled ="False" runat ="server" onclick="updateButton_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="deleteButton" runat="server" OnClick="deleteButton_Click" Text="Delete DVD" Width="126px" style="margin-left: 0px" />
 
    </p>


</asp:Content>
