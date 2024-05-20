<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="QuanLy.aspx.cs" Inherits="CellPhoneS.QuanLy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>&nbsp;</h3>
<h3>CHÀO MỪNG ĐẾN VỚI TRANG QUẢN TRỊ CỦA HỆ THỐNG CELLPHONES</h3>
    <h2>Quản lý bên bán</h2>
    <asp:Button ID="Button1" runat="server" Text="Sản Phẩm" PostBackUrl="~/Page_Manager/SanPham.aspx" />
    <asp:Button ID="Button2" runat="server" Text="Nhân Viên" PostBackUrl="~/Page_Manager/NhanVien.aspx" />
    <asp:Button ID="Button3" runat="server" Text="Loại Hàng" PostBackUrl="~/Page_Manager/LoaiHang.aspx"/>
    <asp:Button ID="Button5" runat="server" Text="Chi Nhánh" PostBackUrl="~/Page_Manager/ChiNhanh.aspx"/>
    <br />
    <h3>Quản lý bên mua</h3>
    <asp:Button ID="Button7" runat="server" Text="Khách Hàng" PostBackUrl="~/Page_Manager/KhachHang.aspx"/>
    <asp:Button ID="Button8" runat="server" Text="Đơn Đặt Hàng" PostBackUrl="~/Page_Manager/DonDatHang.aspx"/>
    <br />
    <h3>Quản Lý Thống Kê Báo Cáo</h3>
    <br />
    <asp:Button ID="Button10" runat="server" Text="Báo Cáo" PostBackUrl="~/Page_Manager/BaoCao.aspx"/>
    <br />
    <br />
    </asp:Content>
