<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="ProjectBookShelf.Adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 20px;
        }
        .auto-style8 {
            width: 100%;
            color: #000000;
            background-color: #CC99FF;
        }
        .auto-style13 {
        text-align: center;
        font-size: medium;
        background-color: #CC99FF;
        width: 356px;
    }
        .auto-style18 {
        height: 20px;
        text-align: center;
        background-color: #CC99FF;
        width: 269px;
    }
        .auto-style19 {
        text-align: center;
        background-color: #CC99FF;
        width: 269px;
    }
        .auto-style20 {
            background-color: #CC99FF;
        }
        .auto-style22 {
        text-align: center;
        background-color: #CC99FF;
        width: 193px;
    }
    .auto-style23 {
        height: 20px;
        text-align: center;
        background-color: #CC99FF;
        width: 193px;
    }
    .auto-style24 {
        height: 20px;
        text-align: center;
        background-color: #CC99FF;
        width: 356px;
    }
    .auto-style25 {
        text-align: center;
        background-color: #CC99FF;
        width: 236px;
    }
    .auto-style26 {
        height: 20px;
        text-align: center;
        background-color: #CC99FF;
        width: 236px;
    }
        .auto-style27 {
            text-align: center;
            font-size: medium;
            background-color: #CC99FF;
            width: 356px;
            color: #9900CC;
        }
        .auto-style28 {
            color: #FFFFFF;
            background-color: #CC99FF;
        }
        .auto-style29 {
            text-align: center;
            background-color: #CC99FF;
            width: 193px;
            height: 41px;
        }
        .auto-style30 {
            text-align: center;
            background-color: #CC99FF;
            width: 269px;
            height: 41px;
        }
        .auto-style31 {
            text-align: center;
            font-size: medium;
            background-color: #CC99FF;
            width: 356px;
            height: 41px;
        }
        .auto-style32 {
            text-align: center;
            background-color: #CC99FF;
            width: 236px;
            height: 41px;
        }
        .auto-style33 {
            background-color: #CC99FF;
            height: 41px;
        }
        .auto-style34 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #9900CC;
        }
        .auto-style35 {
            color: #FFFFFF;
            background-color: #660066;
        }
        .auto-style36 {
            color: #9933FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="accordion-item">&nbsp; Admin Home&nbsp; </span>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Review Feedbacks" BorderColor="White" CssClass="auto-style35" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BorderColor="White" CssClass="auto-style35" OnClick="Button3_Click" Text="Update Delivery Status" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    <table class="auto-style8">
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">
            &nbsp;</td>
        <td class="auto-style19">
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style20" Height="103px" ImageUrl="~/categoryimages/addcategory.png" PostBackUrl="~/addCategory.aspx" Width="100px" />
        </td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">
            <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style20" Height="101px" ImageUrl="~/categoryimages/editcategory.png" PostBackUrl="~/editCategory.aspx" Width="88px" />
        </td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">
            &nbsp;</td>
        <td class="auto-style19">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/addCategory.aspx" CssClass="auto-style28">Add Category</asp:LinkButton>
        </td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/editCategory.aspx" CssClass="auto-style28">Edit Category</asp:LinkButton>
        </td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23"></td>
        <td class="auto-style18"></td>
        <td class="auto-style24"></td>
        <td class="auto-style26"></td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style22">
            &nbsp;</td>
        <td class="auto-style19">
            <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style20" Height="106px" ImageUrl="~/categoryimages/addproduct.jpg" PostBackUrl="~/addProduct.aspx" Width="97px" />
        </td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">
            <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style20" Height="99px" ImageUrl="~/categoryimages/editproduct.jpg" PostBackUrl="~/editProduct.aspx" Width="90px" />
        </td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23">
            </td>
        <td class="auto-style18">
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/addProduct.aspx" CssClass="auto-style28">Add Product</asp:LinkButton>
        </td>
        <td class="auto-style24"></td>
        <td class="auto-style26">
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/editProduct.aspx" CssClass="auto-style28">Edit Product</asp:LinkButton>
        </td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style29"></td>
        <td class="auto-style30"></td>
        <td class="auto-style31">
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Registered Users" CssClass="auto-style34" />
            </strong>
        </td>
        <td class="auto-style32"></td>
        <td class="auto-style33"></td>
        <td class="auto-style33"></td>
    </tr>
    <tr>
        <td class="auto-style23"></td>
        <td class="auto-style18"></td>
        <td class="auto-style24"></td>
        <td class="auto-style26"></td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style13">
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <div class="text-sm-center">
                    <asp:GridView ID="GridView1" runat="server" BorderColor="White" CssClass="fa-inverse" ForeColor="White" ShowFooter="True" Width="390px">
                        <Columns>
                            <asp:TemplateField HeaderText="Block">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument='<%# Eval("user_id") %>' CssClass="auto-style29" OnCommand="LinkButton5_Command">Block User</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:Panel>
        </td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
</table>
</asp:Content>
