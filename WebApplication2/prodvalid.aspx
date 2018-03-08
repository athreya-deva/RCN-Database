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

                <asp:Label ID="Label1" runat="server"></asp:Label>

                <asp:SqlDataSource ID="gridview" runat="server" ConnectionString="<%$ ConnectionStrings:masterdatabase %>" SelectCommand="SELECT * FROM [crform]"></asp:SqlDataSource>

            </td>
            <td>
                <asp:Button ID="sme" runat="server" Text="Trigger to SME" PostBackUrl="~/sme.aspx" />
            </td>
        </tr>
    </table>
    </asp:Content>
<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent2">
    <asp:GridView ID="grid1" runat="server">
        <AlternatingRowStyle BackColor="White" />
        <columns>
            <asp:TemplateField HeaderText="First name">
                <ItemTemplate>
                    <asp:Label ID="fname" runat="server" Text='<%#Bind("fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last name">
                <ItemTemplate>
                    <asp:Label ID="lname" runat="server" Text='<%#Bind("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="date" runat="server" Text='<%#Bind("date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Priority">
                <ItemTemplate>
                    <asp:Label ID="priority" runat="server" Text='<%#Bind("priority") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Module">
                <ItemTemplate>
                    <asp:Label ID="module" runat="server" Text='<%#Bind("module") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Reason for release">
                <ItemTemplate>
                    <asp:Label ID="reasrelease" runat="server" Text='<%#Bind("reasrelease") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Request type">
                <ItemTemplate>
                    <asp:Label ID="reqtype" runat="server" Text='<%#Bind("reqtype") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NLR M NO">
                <ItemTemplate>
                    <asp:Label ID="nlrmno" runat="server" Text='<%#Bind("nlrmno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NLR C pno">
                <ItemTemplate>
                    <asp:Label ID="nlrcpno" runat="server" Text='<%#Bind("nlrcpno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NLR Description">
                <ItemTemplate>
                    <asp:Label ID="nlrcdesc" runat="server" Text='<%#Bind("nlrcdesc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NLR usage quantity">
                <ItemTemplate>
                    <asp:Label ID="nlrcusagequan" runat="server" Text='<%#Bind("nlrcusagequan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Desription">
                <ItemTemplate>
                    <asp:Label ID="desc" runat="server" Text='<%#Bind("desc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Stock disposition">
                <ItemTemplate>
                    <asp:Label ID="stock" runat="server" Text='<%#Bind("stock") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Change clasification">
                <ItemTemplate>
                    <asp:Label ID="changeclasification" runat="server" Text='<%#Bind("changeclasification") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Comments">
                <ItemTemplate>
                    <asp:Label ID="comments" runat="server" Text='<%#Bind("comments") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remarks">
                <ItemTemplate>
                    <asp:Label ID="remarks" runat="server" Text='<%#Bind("remarks") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Approval">
                <ItemTemplate>
                    <asp:Label ID="approval" runat="server" Text='<%#Bind("approval") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
