<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="adminreg.aspx.cs" Inherits="ProjectBookShelf.adminreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 31px;
            color: #FFFFFF;
            background-color: #CC99FF;
        }
        .auto-style8 {
            height: 52px;
            color: #FFFFFF;
            background-color: #CC99FF;
        }
        .auto-style9 {
            height: 33px;
            color: #FFFFFF;
            background-color: #CC99FF;
        }
        .auto-style15 {
        color: #FF5050;
        background-color: #CC99FF;
    }
        .auto-style16 {
            width: 100%;
            background-color: #CC99FF;
        }
        .auto-style19 {
            background-color: #CC99FF;
        }
        .auto-style20 {
            background-color: #CC99FF;
            height: 20px;
        }
        .auto-style21 {
            color: #fff;
            background-color: #CC99FF;
        }
        .auto-style22 {
            height: 33px;
            background-color: #CC99FF;
        }
        .auto-style23 {
            height: 52px;
            background-color: #CC99FF;
        }
        .auto-style24 {
            height: 31px;
            background-color: #CC99FF;
        }
        .auto-style25 {
            color: #fff;
            background-color: #CC00FF;
        }
        .auto-style26 {
            color: #800000
        }
        .auto-style27 {
            color: #660033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21"><strong>Name</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style26"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must enter a name" CssClass="auto-style21"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7"><strong>Email</strong></td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style26"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style21"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8"><strong>Address</strong></td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="auto-style26"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter the address" CssClass="auto-style21"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style23"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21"><strong>Phone Number</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style27"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid phone number" ValidationExpression="^[6-9]\d{9}$" ControlToValidate="TextBox6" CssClass="auto-style21"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9"><strong>Username</strong></td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style26"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter a username" CssClass="auto-style21"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21"><strong>Password</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style26"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter a password" CssClass="auto-style21"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21"><strong>Confirm Password</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style26"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="Password mismatch" CssClass="auto-style21"></asp:CompareValidator>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" CssClass="auto-style25" />
            </td>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style20"></td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
