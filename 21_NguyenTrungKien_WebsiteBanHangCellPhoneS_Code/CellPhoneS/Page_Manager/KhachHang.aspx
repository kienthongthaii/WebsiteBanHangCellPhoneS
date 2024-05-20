<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="CellPhoneS.Page_Manager.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h3>
             &nbsp;</h3>
<h3>DANH SÁCH KHÁCH HÀNG TRÊN HỆ THỐNG
    </h3>
    <p>&nbsp;</p>
    <table >
    
    <tr>
        <td >
            &nbsp;&nbsp;&nbsp;&nbsp; </td>
        
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridViewNhanVien" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKhachHang" DataSourceID="SqlDataSourceKhachHang" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Width="1369px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaKhachHang" HeaderText="Mã Khách Hàng" ReadOnly="True" SortExpression="MaKhachHang" />
                    <asp:BoundField DataField="TenKhach" HeaderText="Tên Khách" SortExpression="TenKhach" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                    <asp:BoundField DataField="DienThoai" HeaderText="Điện Thoại" SortExpression="DienThoai" />
                    <asp:BoundField DataField="HangThanhVien" HeaderText="Hạng Thành Viên" SortExpression="HangThanhVien" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceKhachHang" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKhachHang] = @original_MaKhachHang AND [TenKhach] = @original_TenKhach AND [DiaChi] = @original_DiaChi AND [DienThoai] = @original_DienThoai AND [HangThanhVien] = @original_HangThanhVien" InsertCommand="INSERT INTO [KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (@MaKhachHang, @TenKhach, @DiaChi, @DienThoai, @HangThanhVien)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKhach] = @TenKhach, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai, [HangThanhVien] = @HangThanhVien WHERE [MaKhachHang] = @original_MaKhachHang AND [TenKhach] = @original_TenKhach AND [DiaChi] = @original_DiaChi AND [DienThoai] = @original_DienThoai AND [HangThanhVien] = @original_HangThanhVien">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaKhachHang" Type="String" />
                    <asp:Parameter Name="original_TenKhach" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_DienThoai" Type="String" />
                    <asp:Parameter Name="original_HangThanhVien" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                    <asp:Parameter Name="TenKhach" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="DienThoai" Type="String" />
                    <asp:Parameter Name="HangThanhVien" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKhach" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="DienThoai" Type="String" />
                    <asp:Parameter Name="HangThanhVien" Type="String" />
                    <asp:Parameter Name="original_MaKhachHang" Type="String" />
                    <asp:Parameter Name="original_TenKhach" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_DienThoai" Type="String" />
                    <asp:Parameter Name="original_HangThanhVien" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <h3>ưThêm Khách Hàng</h3>
            <br />
            Mã Khách Hàng :
            <asp:TextBox ID="txtMaNhanVien" runat="server"></asp:TextBox>
            <br />
            Tên Khách :
            <asp:TextBox ID="txtTenNhanVien" runat="server"></asp:TextBox>
            <br />

            Địa chỉ :
            <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
            <br />
            Điện thoại :
            <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
            <br />
            Hạng thành viên :
            <asp:TextBox ID="txtHangThanhVien" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Luu" runat="server" Text="Xác nhận" OnClick="Luu_Click" />
            <br />
        </td>
    </tr>
    
    
</table>
</asp:Content>
