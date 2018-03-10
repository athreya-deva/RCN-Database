<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sme.aspx.cs" Inherits="WebApplication2.sme" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table>
    <tr>
        <td>
           <b>SME Info for IPT:</b> 
        </td>
        <td>

            <asp:Label ID="lbl1" runat="server"></asp:Label>

        </td>
    </tr>
    <tr>
        <td>
            New Part position
        </td>
        <td>

            <asp:DropDownList ID="newpart" runat="server" DataSourceID="SqlDataSource1" DataTextField="newpart" DataValueField="newpart">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>

        </td>
    </tr>
    <tr>
        <td>
            old part disposition
        </td>
        <td>

            <asp:DropDownList ID="oldpart" runat="server" DataSourceID="SqlDataSource1" DataTextField="oldpart" DataValueField="oldpart">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>

        </td>
    </tr>
    <tr>
        <td> Buy part no<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterdatabase %>" SelectCommand="SELECT * FROM [ddmenu]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:TextBox ID="buypart" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            SME comments
        </td>
        <td>
            <asp:TextBox ID="Comments" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="smeapp" runat="server" Text="SME APPROVAL" PostBackUrl="~/ppap.aspx" />
        </td>
    </tr>
</table>
</asp:Content>