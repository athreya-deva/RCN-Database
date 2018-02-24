<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pe.aspx.cs" Inherits="WebApplication2.pe" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="FeaturedContent">
    <table>
        <tr>
            <td><b>PE INFO</b></td>
        </tr>
        <tr>
            <td>
                Doc Required:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Doc updated:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update RCN Data" PostBackUrl="~/commform.aspx" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Triggered to Supplier" PostBackUrl="~/repsupinfo.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>