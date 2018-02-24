<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ppap.aspx.cs" Inherits="WebApplication2.ppap" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table>
        <tr>
            <td><b>PPAP INFORMATION</b></td>
        </tr>
        <tr>
            <td>Raw Material Source:</td>
            <td>
                <asp:TextBox ID="raw" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Status</td>
            <td>
                <asp:TextBox ID="status" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="ppapapp" runat="server" Text="PPAP APPROVAL" PostBackUrl="~/repsupinfo.aspx" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>