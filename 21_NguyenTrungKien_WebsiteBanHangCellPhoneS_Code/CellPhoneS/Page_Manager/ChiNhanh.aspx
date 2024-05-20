<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ChiNhanh.aspx.cs" Inherits="CellPhoneS.Page_Manager.ChiNhanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h3>&nbsp;</h3>
<h3>DANH SÁCH CHI NHÁNH TRÊN HỆ THỐNG
    </h3>
    <p>&nbsp;</p>
    <table >
    
    <tr>
        <td >
            &nbsp;&nbsp;&nbsp;&nbsp; </td>
        
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridViewChiNhanh" runat="server" AutoGenerateColumns="False" DataKeyNames="MaChiNhanh" DataSourceID="SqlDataSourceChiNhanh" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Width="1357px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaChiNhanh" HeaderText="Mã Chi Nhánh" ReadOnly="True" SortExpression="MaChiNhanh" />
                    <asp:BoundField DataField="TenChiNhanh" HeaderText="Tên Chi Nhánh" SortExpression="TenChiNhanh" />
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
            <asp:SqlDataSource ID="SqlDataSourceChiNhanh" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [ChiNhanh] WHERE [MaChiNhanh] = @original_MaChiNhanh AND [TenChiNhanh] = @original_TenChiNhanh AND [DiaChi] = @original_DiaChi AND [DienThoai] = @original_DienThoai" InsertCommand="INSERT INTO [ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (@MaChiNhanh, @TenChiNhanh, @DiaChi, @DienThoai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ChiNhanh]" UpdateCommand="UPDATE [ChiNhanh] SET [TenChiNhanh] = @TenChiNhanh, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai WHERE [MaChiNhanh] = @original_MaChiNhanh AND [TenChiNhanh] = @original_TenChiNhanh AND [DiaChi] = @original_DiaChi AND [DienThoai] = @original_DienThoai">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaChiNhanh" Type="String" />
                    <asp:Parameter Name="original_TenChiNhanh" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_DienThoai" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaChiNhanh" Type="String" />
                    <asp:Parameter Name="TenChiNhanh" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="DienThoai" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenChiNhanh" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="DienThoai" Type="String" />
                    <asp:Parameter Name="original_MaChiNhanh" Type="String" />
                    <asp:Parameter Name="original_TenChiNhanh" Type="String" />
                    <asp:Parameter Name="original_DiaChi" Type="String" />
                    <asp:Parameter Name="original_DienThoai" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <h3>Thêm Chi Nhánh</h3>
            <br />
            Mã Chi Nhánh :
            <asp:TextBox ID="txtMaChiNhanh" runat="server"></asp:TextBox>
            <br />
            Tên Chi Nhánh :
            <asp:TextBox ID="txtTenChiNhanh" runat="server"></asp:TextBox>
            <br />
            Địa Chỉ :
            <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
            <br />
            Điện Thoại :
            <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Luu" runat="server" Text="Xác nhận" OnClick="Luu_Click" />
            <asp:SqlDataSource ID="SqlDataSourceLoaiHang" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [LoaiHang] WHERE [MaLoaiHang] = @original_MaLoaiHang AND [TenLoaiHang] = @original_TenLoaiHang" InsertCommand="INSERT INTO [LoaiHang] ([MaLoaiHang], [TenLoaiHang]) VALUES (@MaLoaiHang, @TenLoaiHang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LoaiHang]" UpdateCommand="UPDATE [LoaiHang] SET [TenLoaiHang] = @TenLoaiHang WHERE [MaLoaiHang] = @original_MaLoaiHang AND [TenLoaiHang] = @original_TenLoaiHang">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaLoaiHang" Type="String" />
                    <asp:Parameter Name="original_TenLoaiHang" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoaiHang" Type="String" />
                    <asp:Parameter Name="TenLoaiHang" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLoaiHang" Type="String" />
                    <asp:Parameter Name="original_MaLoaiHang" Type="String" />
                    <asp:Parameter Name="original_TenLoaiHang" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    
    
</table>
</asp:Content>
