<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="CellPhoneS.Page_Manager.NhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1322px;
        }
        .auto-style3 {
            height: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>&nbsp;</h3>
<h3>DANH SÁCH SẢN PHẨM TRÊN HỆ THỐNG
    </h3>
    <p>&nbsp;</p>
    <table >
    
    <tr>
        <td >
            <asp:Label ID="Label2" runat="server" Text="Chọn Nhóm:" ></asp:Label>
&nbsp;
            <asp:DropDownList ID="LoaiHang" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceLoaiHang" DataTextField="TenLoaiHang" DataValueField="MaLoaiHang" AppendDataBoundItems="True" OnSelectedIndexChanged="LoaiHang_SelectedIndexChanged">
                <asp:ListItem Value="*">Tất Cả</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceLoaiHang" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [MaLoaiHang], [TenLoaiHang] FROM [LoaiHang]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Hiện Hình Mẫu"  />
            </strong>&nbsp;&nbsp;<br />
            &nbsp;</td>
        <td >
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridViewSanPham" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSourceSanPham" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridViewSanPham_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Anh" SortExpression="Anh" Visible="False">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Anh") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Anh") %>' Height="100" Width="100" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MaSanPham" HeaderText="Mã Sản Phẩm" ReadOnly="True" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="TenSanPham" HeaderText="Tên Sản Phẩm" SortExpression="TenSanPham" />
                    <asp:BoundField DataField="MaLoaiHang" HeaderText="Mã Loại Hàng" SortExpression="MaLoaiHang" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
                    <asp:BoundField DataField="DonGiaNhap" HeaderText="Đơn Giá Nhập" SortExpression="DonGiaNhap" />
                    <asp:BoundField DataField="DonGiaBan" HeaderText="Đơn Giá Bán" SortExpression="DonGiaBan" />
                    <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" SortExpression="GhiChu" />
                    <asp:BoundField DataField="MaKho" HeaderText="Mã Kho" SortExpression="MaKho" />
                    <asp:BoundField DataField="MaNCC" HeaderText="Mã Nhà Cung Cấp" SortExpression="MaNCC" />
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowEditButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSourceSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [SanPham] WHERE ([MaLoaiHang] = @MaLoaiHang)" DeleteCommand="DELETE FROM SanPham WHERE (MaSanPham = @MaSanPham)" InsertCommand="INSERT INTO SanPham(MaSanPham, TenSanPham, MaLoaiHang, SoLuong, DonGiaNhap, DonGiaBan, Anh, GhiChu, MaKho, MaNCC) VALUES (@MaSanPham, @TenSanPham, @MaLoaiHang, @SoLuong, @DonGiaNhap, @DonGiaBan, @Anh, @GhiChu, @MaKho, @MaNCC)" UpdateCommand="UPDATE SanPham SET TenSanPham = @TenSanPham, MaLoaiHang = @MaLoaiHang, SoLuong = @SoLuong, DonGiaNhap = @DonGiaNhap, DonGiaBan = @DonGiaBan, Anh = @Anh, GhiChu = @GhiChu, MaKho = @MaKho, MaNCC = @MaNCC WHERE (MaSanPham = @MaSanPham)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridViewSanPham" Name="MaSanPham" PropertyName="SelectedValue" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="LoaiHang" Name="MaLoaiHang" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridViewSanPham" Name="TenSanPham" PropertyName="SelectedValue" />
                    <asp:Parameter Name="MaLoaiHang" />
                    <asp:Parameter Name="SoLuong" />
                    <asp:Parameter Name="DonGiaNhap" />
                    <asp:Parameter Name="DonGiaBan" />
                    <asp:Parameter Name="Anh" />
                    <asp:Parameter Name="GhiChu" />
                    <asp:Parameter Name="MaKho" />
                    <asp:Parameter Name="MaNCC" />
                    <asp:Parameter Name="MaSanPham" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <h3>Thêm Sản Phẩm</h3> <br />
            Mã sản phẩm :
            <asp:TextBox ID="txtMaSanPham" runat="server"></asp:TextBox>
&nbsp;
            <br />
            Tên sản phẩm :
            <asp:TextBox ID="txtTenSanPham" runat="server"></asp:TextBox>
&nbsp;
            <br />
            Mã loại hàng :&nbsp;&nbsp;
            <asp:DropDownList ID="ddlMaLoaiHang" runat="server" DataSourceID="SqlDataSourceLoaiHang" DataTextField="TenLoaiHang" DataValueField="MaLoaiHang">
            </asp:DropDownList>
            <br />
            Số lượng :
            <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
&nbsp;
            <br />
            Đơn giá nhập :
            <asp:TextBox ID="txtDonGiaNhap" runat="server"></asp:TextBox>
&nbsp;
            <br />
            Đơn giá bán :
            <asp:TextBox ID="txtDonGiaBan" runat="server"></asp:TextBox>
&nbsp;
            <br />
            Ghi Chú :
            <asp:TextBox ID="txtGhiChu" runat="server"></asp:TextBox>
&nbsp;
            <br />
            Mã Kho :&nbsp;&nbsp;
            <asp:DropDownList ID="ddlMaKho" runat="server" DataSourceID="SqlDataSourceKho" DataTextField="TenKho" DataValueField="MaKho">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceKho" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [Kho]"></asp:SqlDataSource>
            <br />
            Mã nhà cung cấp :
            <asp:DropDownList ID="ddlMaNhaCungCap" runat="server" DataSourceID="SqlDataSourceNCC" DataTextField="TenNCC" DataValueField="MaNCC">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceNCC" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [NhaCungCap]"></asp:SqlDataSource>
            <br />
            Ảnh :&nbsp;&nbsp;
            <asp:FileUpload ID="FileUploadAnh" runat="server" />
            <br />
            <asp:Button ID="Luu" runat="server" OnClick="Luu_Click" Text="Xác nhận " />
            <br />
        </td>
    </tr>
    
    
</table>
</asp:Content>
