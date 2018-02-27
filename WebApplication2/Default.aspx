<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._prdvld" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>WELCOME</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table>
        <tr>
            <td><h3>Choose the input type:</h3></td>
            <td><asp:DropDownList ID="type" runat="server" Width="229px" OnSelectedIndexChanged="type_SelectedIndexChanged" AutoPostBack="True">
                
                <asp:ListItem Value="DR/SO/FRO">DR/SO/FRO</asp:ListItem>
                <asp:ListItem Value="QA">QA</asp:ListItem>
                <asp:ListItem Value="OEM">OEM</asp:ListItem>
                <asp:ListItem Value="STD">STD</asp:ListItem>
        </asp:DropDownList></td>
        </tr>
        <tr>
            <td><b>DR</b></td>
            <td><asp:DropDownList ID="dr" runat="server" OnSelectedIndexChanged="dr_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="">--SELECT--</asp:ListItem>
                <asp:ListItem Value="DR MAIL">DR MAIL</asp:ListItem>
                <asp:ListItem Value="CHANGE REQUEST FORM">CHANGE REQUEST FORM</asp:ListItem>
        </asp:DropDownList></td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        
    </table>
     <asp:GridView ID="gvEmails" runat="server" AutoGenerateColumns="false">
<columns>
    <asp:BoundField HeaderText = "From" DataField = "From" />
    <asp:HyperLinkField HeaderText = "Subject" DataNavigateUrlFields = "MessageNumber" 
           DataNavigateUrlFormatString ="~/crform.aspx" 
           DataTextField = "Subject" />
    <asp:BoundField HeaderText = "Date" DataField = "DateSent" />
</columns>
</asp:GridView>
<asp:Label ID="lblMsg1" runat="server"></asp:Label>
    
  
</asp:Content>
