<%@ Page Title="crform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="crform.aspx.cs" Inherits="WebApplication2._prdvld" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <h3>Enter the DR information:</h3>
        <table>

<tr>

    <td>

        Requestor name</td>

    <td class="auto-style2">

        <asp:TextBox ID="fname" 

                runat="server" 

                required="true" AutoCompleteType="Enabled" Width="325px">First Name</asp:TextBox>

    </td>
    <td>
        <asp:TextBox ID="lname" 

                runat="server" 

                required="true" AutoCompleteType="Enabled" Width="323px" >Last Name</asp:TextBox></td>

</tr>

<tr>

    <td>

        Date</td>

    <td class="auto-style2">

        <asp:TextBox ID="date" 

                runat="server" 

                required="true" TextMode="Date" Width="329px" OnDataBinding="Page_Load" OnLoad="Page_Load"></asp:TextBox>

    </td>

</tr>
             <tr>

    <td>

        Priority</td>

    <td class="auto-style2">

        <asp:TextBox ID="priority" 

                runat="server" 

                required="true" TextMode="Number" AutoCompleteType="Enabled" Width="337px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        Module</td>

    <td class="auto-style2">

        <asp:TextBox ID="module" 

                runat="server" 

                required="true" Width="333px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        Reason for release</td>

    <td class="auto-style2">

        <asp:DropDownList ID="reasrelease" runat="server" Height="16px" Width="347px" DataSourceID="DROPDOWN" DataTextField="reasforrelease" DataValueField="reasforrelease">
        </asp:DropDownList>

    </td>

</tr>
            <tr>

    <td>

        Request type</td>

    <td class="auto-style2">

        <asp:DropDownList ID="reqtype" runat="server" Height="16px" Width="350px" DataSourceID="DROPDOWN" DataTextField="requesttype" DataValueField="requesttype">
        </asp:DropDownList>

    </td>

</tr>
            <tr>

    <td>

        NLR Module part no</td>

    <td class="auto-style2">

        <asp:TextBox ID="nlrmno" 

        runat="server" required="true" 

        TextMode="Number" Width="345px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        NLR component part no</td>

    <td class="auto-style2">

        <asp:TextBox ID="nlrcpno" 

        runat="server" required="true" 

        TextMode="Number" Width="331px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        NLR component description</td>

    <td class="auto-style2">

        <asp:TextBox ID="nlrcdesc" 

        runat="server" required="true" 

        TextMode="MultiLine" Width="335px" Height="102px"></asp:TextBox>

    </td>

</tr>
            <tr>

    <td>

        NLR component revision</td>

    <td class="auto-style2">

        <asp:TextBox ID="nlrrev" 

        runat="server" required="true" Width="332px"></asp:TextBox>

    </td>
                </tr>
            <tr>
                <td>
                    NLR component usage quantity
                </td>
               
                <td class="auto-style2">
                    
        <asp:TextBox ID="nlrcuquan" 

        runat="server" required="true" Width="327px"></asp:TextBox>

                </td>
            
            </tr>
             <tr>
             <td>
                   Description of change
                <td class="auto-style2">
                    
        <asp:TextBox ID="descr" 

        runat="server" required="true" Width="327px"></asp:TextBox>

                </td>
            
            </tr>
             <tr>
             <td>
                   Stock disposition
                </td>
                <td class="auto-style2">
                    
                    <asp:DropDownList ID="stockdisp" runat="server" Height="16px" Width="333px" DataSourceID="DROPDOWN" DataTextField="stockdisposition" DataValueField="stockdisposition">
                    </asp:DropDownList>

                </td>
            
            </tr>
              <tr>
             <td>
                   Change clasification
                </td>
                <td class="auto-style2">
                    
                    <asp:DropDownList ID="clasification" runat="server" Height="16px" Width="322px" DataSourceID="DROPDOWN" DataTextField="changeclasification" DataValueField="changeclasification">
                    </asp:DropDownList>

                </td>
            
            </tr>
              <tr>
             <td class="auto-style1">
                  Comments
                </td>
                <td class="auto-style3">
                    
        <asp:TextBox ID="comments" 

        runat="server" 

        TextMode="MultiLine" Height="168px" Width="341px"></asp:TextBox>

                </td>
            
            </tr>
              <tr>
             <td>
                  Remarks
                </td>
                <td class="auto-style2">
                    
        <asp:TextBox ID="remarks" 

        runat="server" 

        TextMode="MultiLine" Height="59px" Width="340px"></asp:TextBox>

                </td>
            
            </tr>
              <tr>
             <td>
                  Approval (engg & cost)
                </td>
                <td class="auto-style2">
                    
        <asp:TextBox ID="approval" 

        runat="server" required="true" Width="336px"></asp:TextBox>

                </td>
                  <td>

                      <asp:Button ID="upld" runat="server" Text="Upload" OnClick="upld_Click"  />

                  </td>
                 
            
            </tr>
            <tr>
                <td>

                    <asp:SqlDataSource ID="DROPDOWN" runat="server" ConnectionString="<%$ ConnectionStrings:masterdatabase %>" SelectCommand="SELECT * FROM [ddmenu]"></asp:SqlDataSource>

                </td>
                <td>

                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterdatabase %>" SelectCommand="SELECT * FROM [crform]"></asp:SqlDataSource>

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

    

