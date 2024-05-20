<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="CellPhoneS.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Login ID="Login1" runat="server" BackColor="#df052b" BorderColor="#F7D39F" BorderPadding="4" BorderWidth="1px" CssClass="auto-style5" DestinationPageUrl="~/Page_Manager/QuanLy.aspx" FailureText="Đăng nhập không thành công. Vui lòng thử lại!" Font-Bold="True" Font-Names="Courier New" Font-Size="Medium" ForeColor="White" Height="254px" LoginButtonText="Đăng Nhập" OnAuthenticate="Login1_Authenticate" RememberMeText="Ghi nhớ lần đăng nhập tiếp theo" TitleText="ĐĂNG NHẬP" Width="1304px">
                            <InstructionTextStyle Font-Bold="False" Font-Italic="True" ForeColor="Black" />
                            <LayoutTemplate>
                                <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                    <tr>
                                        <td>
                                            <table cellpadding="0" style="height:254px;width:1304px;">
                                                <tr>
                                                    <td align="center" colspan="2" style="color:White;background-color:#F49D82;border-color:White;font-size:0.9em;font-weight:bold;">ĐĂNG NHẬP</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="281px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" Width="282px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Ghi nhớ lần đăng nhập tiếp theo" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;background-color:White;">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" colspan="2">
                                                        <asp:Button ID="LoginButton" runat="server" BackColor="Black" BorderColor="White" BorderStyle="Dashed" BorderWidth="1px" CommandName="Login" Font-Bold="True" Font-Italic="True" Font-Names="Courier New" Font-Size="Medium" ForeColor="White" Text="Đăng Nhập" ValidationGroup="Login1" Width="281px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <FailureTextStyle BackColor="White" />
                            <LoginButtonStyle BackColor="black" BorderColor="White" BorderStyle="Dashed" BorderWidth="1px" Font-Bold="True" Font-Italic="True" Font-Names="Courier New" Font-Size="Medium" ForeColor="White" />
                            <TextBoxStyle Font-Size="0.8em" />
                            <TitleTextStyle BackColor="#F49D82" BorderColor="White" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                        </asp:Login>
</asp:Content>
