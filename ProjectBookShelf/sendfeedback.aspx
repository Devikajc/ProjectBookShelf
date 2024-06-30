<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="sendfeedback.aspx.cs" Inherits="ProjectBookShelf.sendfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            color: #FFFFFF;
            background-color: #CC99FF;
        }
        .auto-style4 {
            text-align: right;
            width: 162px;
        }
        .auto-style5 {
            text-align: right;
            width: 162px;
            height: 39px;
        }
        .auto-style6 {
            height: 39px;
        }
        .auto-style7 {
            text-align: right;
            width: 162px;
            height: 48px;
        }
        .auto-style8 {
            height: 48px;
        }
        .auto-style9 {
            color: #660033;
            margin-top: 25px;
        }
        .auto-style10 {
            text-align: right;
            width: 162px;
            height: 56px;
        }
        .auto-style11 {
            height: 56px;
        }
        .auto-style12 {
            color: #660033;
        }
        .auto-style13 {
            text-align: right;
            width: 162px;
            height: 20px;
        }
        .auto-style14 {
            height: 20px;
        }
        .auto-style15 {
            color: #660033;
            height: 20px;
        }
        .auto-style16 {
            font-weight: bold;
            color: #FFFFFF;
            font-size: 10pt;
            background-color: #FF00FF;
        }
        .auto-style17 {
            width: 102px;
        }
        .auto-style18 {
            height: 39px;
            width: 102px;
        }
        .auto-style19 {
            height: 48px;
            width: 102px;
        }
        .auto-style20 {
            height: 56px;
            width: 102px;
        }
        .auto-style21 {
            height: 20px;
            width: 102px;
        }
        .auto-style22 {
            text-align: right;
            width: 162px;
            height: 37px;
        }
        .auto-style23 {
            height: 37px;
            width: 102px;
        }
        .auto-style24 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style21"></td>
            <td class="auto-style15"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style4">TO </td>
            <td class="auto-style17">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="fa-inverse" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">Name</td>
            <td class="auto-style23"></td>
            <td class="auto-style24">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style5">FROM</td>
            <td class="auto-style18"></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12" Width="451px"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style7">SUBJECT</td>
            <td class="auto-style19"></td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12" Height="23px" Width="454px"></asp:TextBox>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style10">BODY</td>
            <td class="auto-style20"></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style12" Height="31px" Width="452px"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style4">REPLY MESSAGE</td>
            <td class="auto-style17">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style9" Height="114px" TextMode="MultiLine" Width="628px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style21"></td>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="54px" OnClick="Button1_Click1" Text="Send Reply" Width="188px" />
                </strong></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
