<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="ProjectBookShelf.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 20px;
    }
    .auto-style5 {
        height: 31px;
        color: #660066;
            font-weight: bold;
        }
    .auto-style8 {
        color: #FFFFFF;
        background-color: #CC0099;
    }
        .auto-style11 {
            width: 100%;
            background-color: #CC99FF;
        }
        .auto-style12 {
            color: #660066;
        }
        .auto-style13 {
            color: #660066;
            font-weight: bold;
        }
        .auto-style14 {
            height: 20px;
            text-align: left;
        }
        .auto-style15 {
            height: 31px;
            text-align: left;
        }
        .auto-style16 {
            width: 178px;
        }
        .auto-style17 {
            height: 31px;
            width: 178px;
        }
        .auto-style18 {
            height: 20px;
            width: 178px;
        }
        .auto-style19 {
            color: #660066;
            font-weight: bold;
            height: 20px;
        }
        .auto-style20 {
            color: #660066;
            font-weight: bold;
            height: 26px;
        }
        .auto-style21 {
            text-align: left;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
        }
        .auto-style23 {
            width: 178px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11" align="center">
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    </span>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style5">Username</td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13"><span class="fa-inverse"></td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    </span>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">Password</td>
        <td class="text-left">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12"></asp:TextBox>
        </td>
        <td><span class="fa-inverse"></td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4"></td>
        <td class="auto-style14"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20"></span></td>
        <td class="auto-style21">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style8" />
        </td>
        <td class="auto-style22"><span class="fa-inverse"></td>
        <td class="auto-style22"></td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style19"></td>
        <td class="auto-style14"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" CssClass="fa-inverse"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16"></span></td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style4">
        </td>
        <td class="auto-style14"><span class="fa-inverse"></span>
        </td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style18"></span></td>
    </tr>
    <tr>
        <td class="auto-style13">
            &nbsp;</td>
        <td class="auto-style13">
            &nbsp;</td>
        <td class="text-left"><span class="fa-inverse"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16"></span></td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="text-left">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
</table>
</asp:Content>
