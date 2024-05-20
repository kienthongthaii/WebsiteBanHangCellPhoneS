<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="LoaiHang.aspx.cs" Inherits="CellPhoneS.Page_Manager.LoaiHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3>&nbsp;</h3>
<h3>DANH SÁCH LOẠI HÀNG TRÊN HỆ THỐNG
    </h3>
    <p>&nbsp;</p>
    <table >
    
    <tr>
        <td >
            &nbsp;&nbsp;&nbsp;&nbsp; </td>
        
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridViewLoaiHang" runat="server" AutoGenerateColumns="False" DataKeyNames="MaLoaiHang" DataSourceID="SqlDataSourceLoaiHang" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Width="1357px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaLoaiHang" HeaderText="Mã Loại Hàng" ReadOnly="True" SortExpression="MaLoaiHang" />
                    <asp:BoundField DataField="TenLoaiHang" HeaderText="Tên Loại Hàng" SortExpression="TenLoaiHang" />
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
            <br />
            <h3>Thêm Loại Hàng</h3>
            <br />
            Mã Loại Hàng :
            <asp:TextBox ID="txtMaLoaiHang" runat="server"></asp:TextBox>
            <br />
            Tên Loại Hàng :
            <asp:TextBox ID="txtTenLoaiHang" runat="server"></asp:TextBox>
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
