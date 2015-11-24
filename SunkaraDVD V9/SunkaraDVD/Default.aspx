<%@ Page Title="Default" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SunkaraDVD.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Image id="Image2" runat="server" ImageUrl ="~/Images/Lighthouse.jpg" Width="180" Height="180"/>
   <div class ="div-child">
       <h2>Here is a list of DVDs for sale:</h2>
       <asp:Datalist id="DVDsRepeater" runat="server" OnItemCommand="DVDsRepeater_ItemCommand">  
           <ItemTemplate> 
           
            Title: <strong>'<%#Eval("DVDtitle")%>'</strong><br />
            Artist: <strong>'<%#Eval("DVDartist")%>'</strong><br />
            Rating: <strong>'<%#Eval("DVDrating")%>'</strong><br />
            Price: <strong>'<%#Eval("DVDprice")%>'</strong>
          <asp:LinkButton ID ="DetailsButton" runat ="server" 
             Text="Details"
             CommandName ="details" 
             CommandArgument = '<%# Eval("DVDID")%>' />
           <asp:LinkButton ID ="BuyButton" runat ="server" 
             Text="Buy"
             CommandName ="buy" 
             CommandArgument = '<%# Eval("DVDID")%>' />

           </ItemTemplate> 
           <SeparatorTemplate> 
               <hr /> 
           </SeparatorTemplate>  

       </asp:Datalist>
   </div>
</asp:Content>
