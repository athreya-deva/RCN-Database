<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tco.aspx.cs" Inherits="WebApplication2.tco" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="FeaturedContent">
    <table>
        <tr>
            <td><b>TCO Form</b></td>
        </tr>
        <tr>
            <td>IPT:</td>
            <td>
                <asp:Label ID="iptl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Module:</td>
            <td>
                <asp:Label ID="mod" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Reason for release:</td>
            <td>
                <asp:Label ID="re" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>xxxx:</td>
            <td>
                <asp:Label ID="xx" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Repair Supplier:</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Module part numbers(in):</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Module part numbers(out):</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Annual income:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Labour cost(usd):</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Labour cost (local currency):</td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td>Material cost(usd):</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Material cost(local currency):</td>
            <td>
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Transport cost(usd):</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Transport cost(local currency):</td>
            <td>
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Remarks:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Trigger to SME" PostBackUrl="~/sme.aspx" />
            </td>
        </tr>

    </table>
</asp:Content>
<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
    <table>
        <tr>
            <td>% of failure:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Repair Impact:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Justification:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CE call cost/unit:</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Logistic Cost/unit:</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
             </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Trigger to Management Approval" />
            </td>
        </tr>

    </table>
</asp:Content>
<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="MainContent2">
    <table>
        <tr>
            <td>upgrade cost per unit($):</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>New Repair Price per unit($):</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Project Spend(12 months):</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Repair cost avoidance:</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>projected total savings<br /> due to reliability:</td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>projected total savings<br /> (rel/log/ce):</td>
            <td>
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>New buy vs repair cost:</td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
          <td>
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
             </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Trigger to PE"/>
            </td>
        </tr>
        
    </table>
</asp:Content>