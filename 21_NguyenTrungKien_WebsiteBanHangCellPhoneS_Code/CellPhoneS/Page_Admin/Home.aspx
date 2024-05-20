<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CellPhoneS.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/quangcao.jpg" />
    <br />
    <div style="float: left; margin-right: 10px;">
    <asp:TextBox ID="txtTimKiem" runat="server"></asp:TextBox>
    <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" OnClick="btnTimKiem_Click" />
    <asp:Label ID="lblTB" runat="server" Text="Label" Visible="False"></asp:Label>
</div>

<div style="float: right; margin-left: 10px;">
    <asp:Label ID="Label2" runat="server" Text="Loại Sản Phẩm "></asp:Label>
    <asp:DropDownList ID="LoaiSanPham" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="LoaiHang" DataTextField="TenLoaiHang" DataValueField="MaLoaiHang" OnSelectedIndexChanged="LoaiSanPham_SelectedIndexChanged">
        <asp:ListItem Value="*">Tất cả</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="LoaiHang" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [LoaiHang]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Xếp theo: "></asp:Label>
    <asp:DropDownList ID="Xeptheo" runat="server" OnSelectedIndexChanged="Xeptheo_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Value="*">  Tất Cả</asp:ListItem>
        <asp:ListItem Value="TT">Thứ Tự</asp:ListItem>
        <asp:ListItem Value="GTD">Giá Tăng Dần</asp:ListItem>
        <asp:ListItem Value="GDD">Giá Giảm Dần</asp:ListItem>
    </asp:DropDownList>
</div>

    

<asp:DataList ID="lstSanPham" runat="server" DataKeyField="MaSanPham" 
            DataSourceID="SqlDataSource2" RepeatColumns="5" style="text-align: center" Width="100%">
        <ItemTemplate>
            <asp:Image ID="imgSanPham" runat="server" Height="279px" 
                 ImageUrl='<%# Eval("Anh") %>' Width="260px" />
            <br />
            <asp:HyperLink ID="lnkSanPham" runat="server" 
                NavigateUrl='<%# "ChiTietSanPham.aspx?MaSanPham=" + Eval("MaSanPham") %>' 
                Text='<%# Eval("TenSanPham") %>'>
            </asp:HyperLink>
            <br />
            <asp:Label ID="lblDonGia" runat="server" 
                Text='<%# Eval("DonGiaBan","{0:0,000 vnđ}") %>'>
            </asp:Label>
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT [MaSanPham], [TenSanPham], [Anh], [DonGiaBan] FROM [SanPham] WHERE ([MaLoaiHang] = @MaLoaiHang)">
        <SelectParameters>
            <asp:ControlParameter ControlID="LoaiSanPham" Name="MaLoaiHang" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
