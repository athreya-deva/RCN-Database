<%@ Page Title="crform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="crform.aspx.cs" Inherits="WebApplication2._prdvld" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <h3>Enter the DR information:</h3>
        <table>

<tr>

    <td>

        Requestor name</td>

    <td class="auto-style2">

        <asp:TextBox ID="txtdrrev0" 

                runat="server" 

                required="true" AutoCompleteType="Enabled" Width="325px">First Name</asp:TextBox>

    </td>
    <td>
        <asp:TextBox ID="TextBox343" 

                runat="server" 

                required="true" AutoCompleteType="Enabled" Width="323px">Last Name</asp:TextBox></td>

</tr>

<tr>

    <td>

        Date</td>

    <td class="auto-style2">

        <asp:TextBox ID="txtdrrev" 

                runat="server" 

                required="true" AutoCompleteType="Enabled" TextMode="DateTime" Enabled="False" ReadOnly="True" Width="329px">dd/mm/yy</asp:TextBox>

    </td>

</tr>
             <tr>

    <td>

        Priority</td>

    <td class="auto-style2">

        <asp:TextBox ID="txtppartno" 

                runat="server" 

                required="true" TextMode="Number" AutoCompleteType="Enabled" Width="337px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        Module</td>

    <td class="auto-style2">

        <asp:TextBox ID="txtcpartno" 

                runat="server" 

                required="true" TextMode="Number" Width="333px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        Reason for release</td>

    <td class="auto-style2">

        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="347px">
            <asp:ListItem>!</asp:ListItem>
            <asp:ListItem>!!</asp:ListItem>
        </asp:DropDownList>

    </td>

</tr>
            <tr>

    <td>

        Request type</td>

    <td class="auto-style2">

        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="350px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:DropDownList>

    </td>

</tr>
            <tr>

    <td>

        NLR Module part no</td>

    <td class="auto-style2">

        <asp:TextBox ID="txtremarks" 

        runat="server" required="true" 

        TextMode="Number" Width="345px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        NLR component part no</td>

    <td class="auto-style2">

        <asp:TextBox ID="Txtdscchange" 

        runat="server" required="true" 

        TextMode="Number" Width="331px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        NLR component description</td>

    <td class="auto-style2">

        <asp:TextBox ID="Txtreasrelease" 

        runat="server" required="true" 

        TextMode="MultiLine" Width="335px" Height="102px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        NLR component revision</td>

    <td class="auto-style2">

        <asp:TextBox ID="Txtpartdesc" 

        runat="server" required="true" 

        TextMode="Number" Width="332px"></asp:TextBox>

    </td>
                </tr>
            <tr>
                <td>
                    NLR component usage quantity
                </td>
               
                <td class="auto-style2">
                    
        <asp:TextBox ID="TextBox1" 

        runat="server" required="true" 

        TextMode="Number" Width="327px"></asp:TextBox>

                </td>
            
            </tr>
             <tr>
             <td>
                   Description of change
                <td class="auto-style2">
                    
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="336px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>

                </td>
            
            </tr>
             <tr>
             <td>
                   Stock disposition
                </td>
                <td class="auto-style2">
                    
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="333px">
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>

                </td>
            
            </tr>
              <tr>
             <td>
                   Change clasification
                </td>
                <td class="auto-style2">
                    
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="322px">
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>

                </td>
            
            </tr>
              <tr>
             <td class="auto-style1">
                  Comments
                </td>
                <td class="auto-style3">
                    
        <asp:TextBox ID="TextBox5" 

        runat="server" 

        TextMode="MultiLine" Height="168px" Width="341px"></asp:TextBox>

                </td>
            
            </tr>
              <tr>
             <td>
                  Remarks
                </td>
                <td class="auto-style2">
                    
        <asp:TextBox ID="TextBox6" 

        runat="server" 

        TextMode="MultiLine" Height="59px" Width="340px"></asp:TextBox>

                </td>
            
            </tr>
              <tr>
             <td>
                  Approval (engg & cost)
                </td>
                <td class="auto-style2">
                    
        <asp:TextBox ID="TextBox7" 

        runat="server" required="true" Width="336px"></asp:TextBox>

                </td>
                  <td>

                      <asp:Button ID="upld" runat="server" Text="Upload" OnClick="upld_Click" PostBackUrl="~/prodvalid.aspx" />

                  </td>
            
            </tr>
               




</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
    </asp:Content>
    

<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 77px;
        }
        .auto-style2 {
            width: 97px;
        }
        .auto-style3 {
            height: 77px;
            width: 97px;
        }
    </style>
</asp:Content>

    

