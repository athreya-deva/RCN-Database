<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="prodvalid.aspx.cs" Inherits="WebApplication2.prodvalid" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table>
        <tr>
            <td>
                <b>Repair Impact</b>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="gipt" runat="server" Text="Generate IPT" Enabled="False" />
            </td>
            <td>
                <asp:Button ID="close" runat="server" Text="Close" PostBackUrl="~/Default.aspx" />
            </td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            </td>
            <td>
                <asp:Button ID="sme" runat="server" Text="Trigger to SME" PostBackUrl="~/sme.aspx" />
            </td>
        </tr>
    </table>
    </asp:Content>
