<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="repsupinfo.aspx.cs" Inherits="WebApplication2.repsupinfo" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="FeaturedContent">
    <table>
        <tr>
            <td><b>Repair supplier info</b></td>
        </tr>
        <tr>
            <td>
                Repair Supplier Code
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="repsupcode" runat="server" Width="357px" AutoPostBack="True" DataSourceID="repsup" DataTextField="code" DataValueField="code" OnSelectedIndexChanged="repsupcode_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>

                <asp:SqlDataSource ID="repsup" runat="server" ConnectionString="<%$ ConnectionStrings:masterdatabase %>" SelectCommand="SELECT * FROM [repsupinfo]"></asp:SqlDataSource>

            </td>
        </tr>
         <tr>
            <td>
                Supplier name
            </td>
            <td class="auto-style1">
                <asp:Label ID="name" runat="server"></asp:Label>
             </td>
        </tr>
         <tr>
            <td>
                Supplier Region
            </td>
            <td class="auto-style1">
                <asp:Label ID="region" runat="server"></asp:Label>
             </td>
        </tr>
         <tr>
            <td>
               Supplier country
            </td>
            <td class="auto-style1">
                <asp:Label ID="country" runat="server"></asp:Label>
             </td>
        </tr>
         <tr>
            <td>
                Slm
            </td>
            <td class="auto-style1">
                <asp:Label ID="slm" runat="server"></asp:Label>
             </td>
        </tr>

    </table>

</asp:Content>
<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
    <table>
        
         <tr>
            <td>
                Module Part no(in)
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
        </tr>
        
         <tr>
            <td>
                Module Part No (out)
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </td>
        </tr>
        
         <tr>
            <td>
                Mdule part Desc
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             </td>
        </tr>
        
         <tr>
            <td>
               
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Trigger to SLM" />
               
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="PE document update" PostBackUrl="~/pe.aspx" />
             </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
    .auto-style1 {
        width: 373px;
    }
</style>
</asp:Content>
