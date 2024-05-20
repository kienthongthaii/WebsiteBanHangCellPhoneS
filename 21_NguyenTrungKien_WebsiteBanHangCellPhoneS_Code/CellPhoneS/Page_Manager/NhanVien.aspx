<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NhanVien.aspx.cs" Inherits="CellPhoneS.Page_Manager.NhanVien1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-right: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>&nbsp;</h3>
<h3>DANH SÁCH NHÂN VIÊN TRÊN HỆ THỐNG
    </h3>
    <p>&nbsp;</p>
    <table >
    
    <tr>
        <td >
            &nbsp;&nbsp;&nbsp;&nbsp; </td>
        
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridViewNhanVien" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNhanVien" DataSourceID="SqlDataSourceNhanVien" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaNhanVien" HeaderText="Mã Nhân Viên" ReadOnly="True" SortExpression="MaNhanVien" />
                    <asp:BoundField DataField="TenNhanVien" HeaderText="Tên Nhân Viên" SortExpression="TenNhanVien" />
                    <asp:BoundField DataField="MaChucVu" HeaderText="Mã Chức Vụ" SortExpression="MaChucVu" />
                    <asp:BoundField DataField="MaChiNhanh" HeaderText="Mã Chi Nhánh" SortExpression="MaChiNhanh" />
                    <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" />
                    <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                    <asp:BoundField DataField="DienThoai" HeaderText="Điện Thoại" SortExpression="DienThoai" />
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
            <h3>Thêm Nhân Viên</h3>
            <br />
            Mã nhân viên :
            <asp:TextBox ID="txtMaNhanVien" runat="server"></asp:TextBox>
            <br />
            Tên nhân viên :
            <asp:TextBox ID="txtTenNhanVien" runat="server"></asp:TextBox>
            <br />
            Mã chức vụ :
            <asp:DropDownList ID="ddlMaChucVu" runat="server" DataSourceID="SqlDataSourceChucVu" DataTextField="MaChucVu" DataValueField="MaChucVu">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceChucVu" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [ChucVu]"></asp:SqlDataSource>
            <br />
            Mã chi nhánh :
            <asp:DropDownList ID="ddlMaChiNhanh" runat="server" DataSourceID="SqlDataSourceChiNhanh" DataTextField="TenChiNhanh" DataValueField="MaChiNhanh">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceChiNhanh" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [ChiNhanh]"></asp:SqlDataSource>
            <br />
            Ngày sinh :<asp:Calendar ID="cNgaySinh" runat="server" BackColor="White" BorderColor="#3366CC" CellPadding="1" CssClass="auto-style4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" BorderWidth="1px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" Font-Bold="True" BorderWidth="1px" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <br />
&nbsp;<br />
            Giới tính : <asp:RadioButton ID="rbtNam" runat="server" Text="Nam" GroupName="gioiTinh" />
                        <asp:RadioButton ID="rbtNu" runat="server" Text="Nữ" GroupName="gioiTinh" />
                        <br />

            Địa chỉ :
            <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
            <br />
            Điện thoại :
            <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Luu" runat="server" Text="Xác nhận" OnClick="Luu_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSourceNhanVien" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNhanVien] = @original_MaNhanVien AND [TenNhanVien] = @original_TenNhanVien AND [MaChucVu] = @original_MaChucVu AND [MaChiNhanh] = @original_MaChiNhanh AND [NgaySinh] = @original_NgaySinh AND [GioiTinh] = @original_GioiTinh AND [DiaChi] = @original_DiaChi AND [DienThoai] = @original_DienThoai" InsertCommand="INSERT INTO [NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (@MaNhanVien, @TenNhanVien, @MaChucVu, @MaChiNhanh, @NgaySinh, @GioiTinh, @DiaChi, @DienThoai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [NhanVien]" UpdateCommand="UPDATE [NhanVien] SET [TenNhanVien] = @TenNhanVien, [MaChucVu] = @MaChucVu, [MaChiNhanh] = @MaChiNhanh, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai WHERE [MaNhanVien] = @original_MaNhanVien AND [TenNhanVien] = @original_TenNhanVien AND [MaChucVu] = @original_MaChucVu AND [MaChiNhanh] = @original_MaChiNhanh AND [NgaySinh] = @original_NgaySinh AND [GioiTinh] = @original_GioiTinh AND [DiaChi] = @original_DiaChi AND [DienThoai] = @original_DienThoai">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaNhanVien" Type="String" />
                    <asp:Parameter Name="original_TenNhanVien" Type="String" />
                    <asp:Parameter Name="original_MaChucVu" Type="String" />
                    <asp:Parameter Name="original_MaChiNhanh" Type="String" />
                    <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="original_GioiTinh" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_DienThoai" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaNhanVien" Type="String" />
                    <asp:Parameter Name="TenNhanVien" Type="String" />
                    <asp:Parameter Name="MaChucVu" Type="String" />
                    <asp:Parameter Name="MaChiNhanh" Type="String" />
                    <asp:Parameter Name="NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="GioiTinh" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="DienThoai" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenNhanVien" Type="String" />
                    <asp:Parameter Name="MaChucVu" Type="String" />
                    <asp:Parameter Name="MaChiNhanh" Type="String" />
                    <asp:Parameter Name="NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="GioiTinh" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="DienThoai" Type="String" />
                    <asp:Parameter Name="original_MaNhanVien" Type="String" />
                    <asp:Parameter Name="original_TenNhanVien" Type="String" />
                    <asp:Parameter Name="original_MaChucVu" Type="String" />
                    <asp:Parameter Name="original_MaChiNhanh" Type="String" />
                    <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
                    <asp:Parameter Name="original_GioiTinh" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_DienThoai" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    
    
</table>
</asp:Content>
