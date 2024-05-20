<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="CellPhoneS.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2>GIỎ HÀNG CỦA BẠN</h2>
    <asp:GridView ID="dsSanPham" runat="server" 
        onrowdeleting="dsSanPham_RowDeleting" onrowediting="dsSanPham_RowEditing" 
        onrowupdating="dsSanPham_RowUpdating" 
    onrowcancelingedit="dsSanPham_RowCancelingEdit" AutoGenerateColumns="False" 
    CellPadding="4" BackColor="White" BorderColor="#336666" BorderStyle="Double" 
    BorderWidth="3px" GridLines="Horizontal" Height="247px" Width="1335px">
        <Columns>
            <asp:CommandField ShowEditButton="True" CancelText="Hủy Bỏ" DeleteText="Xóa" 
                EditText="Sửa" UpdateText="Cập Nhật" >
            <HeaderStyle Width="100px" />
            </asp:CommandField>
            <asp:BoundField DataField="MaSanPham" HeaderText="Mã Hàng" >
                <HeaderStyle Width="80px" HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="TenSanPham" HeaderText="Tên Hàng">
                <HeaderStyle Width="150px" HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="DonGiaBan" HeaderText="Đơn Giá" >
                <HeaderStyle Width="80px" HorizontalAlign="Left"/>
            </asp:BoundField>
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" >
                <HeaderStyle Width="80px" HorizontalAlign="Left"/>
            </asp:BoundField>
            <asp:BoundField DataField="TongTien" HeaderText="Thành Tiền" 
                            DataFormatString="{0:0,000}">
                <HeaderStyle Width="100px" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <br />
    <asp:Label ID="lblTongTien" runat="server" ForeColor="#0033CC" style="font-size: 30px"></asp:Label>
    <br /><br />
    <asp:LinkButton ID="butMuahang" runat="server" PostBackUrl="Home.aspx" style="font-size: 20px">
        Tiếp Tục Mua Hàng
    </asp:LinkButton>
    &nbsp;
    <asp:LinkButton ID="butDathang" runat="server" onclick="butDathang_Click" style="font-size: 20px" PostBackUrl="DonHang.aspx">
        Đặt Hàng
    </asp:LinkButton>
</asp:Content>
