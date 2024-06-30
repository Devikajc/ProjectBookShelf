<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="oneproductview.aspx.cs" Inherits="ProjectBookShelf.oneproductview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            background-color: #CC99FF;
        }
        .auto-style5 {
            width: 95px;
            text-align: left;
        }
        .auto-style6 {
            color: #660033;
        }
        .auto-style8 {
            width: 122px;
        }
        .auto-style9 {
            width: 145%;
            height: 385px;
        }
        .auto-style11 {
            width: 95px;
        }
        .auto-style12 {
            width: 146px;
        }
        .auto-style13 {
            width: 95px;
            text-align: justify;
        }
        .auto-style14 {
            font-size: 20px;
            color: #FFFFFF;
        }
        .auto-style16 {
            width: 854px;
        }
        .auto-style17 {
            text-align: justify;
            width: 854px;
        }
        .auto-style22 {
            font-size: 20px;
        }
        .auto-style27 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #9900CC;
        }
        .auto-style28 {
            font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style17">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/categoryimages/cart1.png" PostBackUrl="~/ViewCart.aspx" Width="54px" />
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CC00FF" BorderColor="#9900CC" CssClass="auto-style28" ForeColor="White" PostBackUrl="~/loginpage.aspx">Logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style17">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" style="margin-right: 60px">
                    <ItemTemplate>
                        <table class="auto-style9">
                            <tr>
                                <td class="auto-style13">
                                    <asp:Image ID="Image1" runat="server" Height="244px" ImageUrl='<%# Eval("product_image") %>' Width="183px" />
                                </td>
                                <td class="auto-style12">&nbsp;</td>
                                <td><strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("product_name") %>'></asp:Label>
                                    </strong></td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td><strong>
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("product_price") %>'></asp:Label>
                                    </strong></td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td><strong><em>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_description") %>'></asp:Label>
                                    </em></strong></td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><span class="auto-style22"></td>
            <td class="auto-style16">
                <table class="w-100">
                    <tr>
                        <td class="fa-inverse"><strong>QUANTITY:</strong></td>
                        <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
                        </td>
                        <td><span class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the quantity"></asp:RequiredFieldValidator>
                            </span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><strong>
                <asp:Button ID="Button1" runat="server" Text="Add to Cart" CssClass="auto-style27" OnClick="Button1_Click" />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style27" Text="Continue" OnClick="Button3_Click" />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></span></td>
                    </tr>
                </table>
            </td>
            <td>
                    &nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
