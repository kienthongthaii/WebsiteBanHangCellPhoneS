<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="CellPhoneS.Page_Manager.DonDatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>&nbsp;</h3>
<h3>DANH SÁCH PHIẾU XUẤT TRÊN HỆ THỐNG
    </h3>
<h3>
    <asp:Label ID="Label1" runat="server" Text="Ngày xuất: "></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="414px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    </h3>
    <table >
    
    <tr>
        <td >
            &nbsp;&nbsp;&nbsp;&nbsp; </td>
        
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridViewNhanVien" runat="server" AutoGenerateColumns="False" DataKeyNames="MaPhieuXuat" DataSourceID="SqlDataSourceDonDatHang" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Width="1348px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaPhieuXuat" HeaderText="Mã Phiếu Xuất" ReadOnly="True" SortExpression="MaPhieuXuat" />
                    <asp:BoundField DataField="MaNhanVien" HeaderText="Mã Nhân Viên" SortExpression="MaNhanVien" />
                    <asp:BoundField DataField="NgayXuat" HeaderText="Ngày Xuất" SortExpression="NgayXuat" />
                    <asp:BoundField DataField="MaKhachHang" HeaderText="Mã Khách Hàng" SortExpression="MaKhachHang" />
                    <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền" SortExpression="TongTien" />
                    <asp:BoundField DataField="MaKho" HeaderText="Mã Kho" SortExpression="MaKho" />
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
            <asp:SqlDataSource ID="SqlDataSourceDonDatHang" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [PhieuXuat] WHERE [MaPhieuXuat] = @original_MaPhieuXuat AND [MaNhanVien] = @original_MaNhanVien AND [NgayXuat] = @original_NgayXuat AND [MaKhachHang] = @original_MaKhachHang AND [TongTien] = @original_TongTien AND [MaKho] = @original_MaKho" InsertCommand="INSERT INTO [PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (@MaPhieuXuat, @MaNhanVien, @NgayXuat, @MaKhachHang, @TongTien, @MaKho)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PhieuXuat]" UpdateCommand="UPDATE [PhieuXuat] SET [MaNhanVien] = @MaNhanVien, [NgayXuat] = @NgayXuat, [MaKhachHang] = @MaKhachHang, [TongTien] = @TongTien, [MaKho] = @MaKho WHERE [MaPhieuXuat] = @original_MaPhieuXuat AND [MaNhanVien] = @original_MaNhanVien AND [NgayXuat] = @original_NgayXuat AND [MaKhachHang] = @original_MaKhachHang AND [TongTien] = @original_TongTien AND [MaKho] = @original_MaKho">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaPhieuXuat" Type="String" />
                    <asp:Parameter Name="original_MaNhanVien" Type="String" />
                    <asp:Parameter Name="original_NgayXuat" Type="DateTime" />
                    <asp:Parameter Name="original_MaKhachHang" Type="String" />
                    <asp:Parameter Name="original_TongTien" Type="String" />
                    <asp:Parameter Name="original_MaKho" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaPhieuXuat" Type="String" />
                    <asp:Parameter Name="MaNhanVien" Type="String" />
                    <asp:Parameter Name="NgayXuat" Type="DateTime" />
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                    <asp:Parameter Name="TongTien" Type="String" />
                    <asp:Parameter Name="MaKho" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaNhanVien" Type="String" />
                    <asp:Parameter Name="NgayXuat" Type="DateTime" />
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                    <asp:Parameter Name="TongTien" Type="String" />
                    <asp:Parameter Name="MaKho" Type="String" />
                    <asp:Parameter Name="original_MaPhieuXuat" Type="String" />
                    <asp:Parameter Name="original_MaNhanVien" Type="String" />
                    <asp:Parameter Name="original_NgayXuat" Type="DateTime" />
                    <asp:Parameter Name="original_MaKhachHang" Type="String" />
                    <asp:Parameter Name="original_TongTien" Type="String" />
                    <asp:Parameter Name="original_MaKho" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    
    
</table>
</asp:Content>
