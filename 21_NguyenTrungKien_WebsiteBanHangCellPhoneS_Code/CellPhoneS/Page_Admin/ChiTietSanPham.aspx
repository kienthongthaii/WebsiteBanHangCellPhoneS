<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="CellPhoneS.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
            margin-top: 8px;
        }
        .auto-style3 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3> 
        <asp:Label ID="lblTenSanPham" runat="server"> </asp:Label>
    </h3>
    <asp:Label ID="lblMaSanPham" runat="server" ForeColor="#0033CC" style="font-size: 14px"></asp:Label>
    <br />
    <span style="color: #0033CC; font-size: 14px">Số lượng:</span>&nbsp;
    <asp:TextBox ID="txtSoluong" runat="server" Text="1" Width="63px" Height="21px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Label ID="lblDonGiaBan" runat="server" ForeColor="#003399" style="font-size: 14px"></asp:Label>
    <br />
    <br />
    <asp:Image ID="imgHinh" runat="server" Height="328px" Width="351px" />
    <br />
    <br />
    <asp:Label ID="lblGhiChu" runat="server" ForeColor="#003399" style="font-size: 14px"></asp:Label>
    <br />
    <br />
    <asp:Button ID="butInsert" runat="server" Text="Thêm Vào Giỏ Hàng" onclick="butInsert_Click" ForeColor="#000099" Width="189px" CssClass="auto-style2" Height="62px" />
&nbsp;<asp:Button ID="butCancel" runat="server" ForeColor="#000099" PostBackUrl="~/Page_Admin/Home.aspx" Text="Trở Về Tang Chủ" Width="179px" CssClass="auto-style3" Height="61px" />
</asp:Content>
