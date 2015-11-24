<%@ Page Title="AddDVD" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddDVD.aspx.cs" Inherits="SunkaraDVD.Admin.AddDVD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
<div>
    <h3>Add to our list of DVDs on this page</h3>
    <asp:Label ID ="dbErrorMessage" ForeColor ="Red" runat ="server" class="widelabel" />
    <br />
    <asp:Label ID ="Movie" text="Movie:" ForeColor ="Black" runat ="server" class="widelabel" />
    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
    <asp:RequiredFieldValidator id ="MovieValidator" runat ="server" ControlToValidate ="TextBox1" ErrorMessage ="Movie is required!"
        SetFocusOnError = "true" ValidationGroup="First" /> 
    <br />
    <asp:Label ID ="Artist" text="Artist:" ForeColor ="Black" runat ="server" class="widelabel" />
    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox> 
    <asp:RequiredFieldValidator id ="ArtistValidator" runat ="server" ControlToValidate ="TextBox2" ErrorMessage ="Artist is required!"
        SetFocusOnError = "true" ValidationGroup="First" /> 
    <br />
    <asp:Label ID ="Rating" text="Rating:" ForeColor ="Black" runat ="server" class="widelabel" />
    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" ></asp:TextBox>
     <asp:RequiredFieldValidator id ="RatingValidator" runat ="server" ControlToValidate ="TextBox4" ErrorMessage ="Rating is required!"
        SetFocusOnError = "true" ValidationGroup="First" />
    <asp:RangeValidator id ="RatingRange" runat ="server" Type ="Integer" ControlToValidate ="TextBox4" 
        MinimumValue ="1" MaximumValue ="5" ErrorMessage ="Enter value between 1 and 5" /> 

    <br />
    <asp:Label ID ="Price" text= "Price:" ForeColor ="Black" runat ="server" class="widelabel" />
    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" ></asp:TextBox>
    <asp:RequiredFieldValidator id ="PriceValidator" runat ="server" ControlToValidate ="TextBox3" ErrorMessage ="Price is required!"
        SetFocusOnError = "true" ValidationGroup="First" />
    <asp:CompareValidator id ="priceCheck" runat ="server" Operator ="DataTypeCheck" Type ="Currency"  ControlToValidate ="TextBox3" Display="Dynamic" ForeColor="Red" 
    ErrorMessage ="Please enter currency" />

    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add DVD" ValidationGroup="First"/>
    </p>
 </div>
</asp:Content>
