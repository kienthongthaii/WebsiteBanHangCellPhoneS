<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DonHang.aspx.cs" Inherits="CellPhoneS.DonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            width: 857px;
        }
        .auto-style4 {
            width: 539px;
        }
        .auto-style5 {
            height: 33px;
            width: 539px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="color: #0033CC">
        <h2>ĐƠN HÀNG</h2>
        <h3>THÔNG TIN ĐƠN HÀNG</h3>             
        <asp:GridView ID="grdDonHang" runat="server" 
            AutoGenerateColumns="False" CellPadding="4" BackColor="White" BorderColor="#336666" BorderStyle="Double" 
            BorderWidth="3px" GridLines="Horizontal" Height="283px" Width="1334px">
            <Columns>
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
        <h3>THÔNG TIN NGƯỜI NHẬN</h3>
        <table style="font-size:14px" class="auto-style3">
            <tr>
                <td>Họ tên:</td>
                <td class="auto-style4"> <asp:TextBox ID="txtHoTen" runat="server" Width="355px"></asp:TextBox> </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Nhập họ tên!"></asp:RequiredFieldValidator>
                </td>
            </tr><tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style5"> <asp:TextBox ID="txtEmail" runat="server" Width="355px"></asp:TextBox> </td>
            </tr><tr>
                <td>Điện thoại:</td>
                <td class="auto-style4"> <asp:TextBox ID="txtDienThoai" runat="server" Width="355px"></asp:TextBox> </td>
            </tr><tr>
                <td class="auto-style2">Số nhà:</td>
                <td class="auto-style5"> <asp:TextBox ID="txtSoNha" runat="server" Width="355px"></asp:TextBox> </td>
            </tr><tr>
                <td>Đường:</td>
                <td class="auto-style4"> <asp:TextBox ID="txtDuong" runat="server" Width="355px"></asp:TextBox> </td>
            </tr><tr>
                <td>Phường/xã:</td>
                <td class="auto-style4"> <asp:TextBox ID="txtPhuong" runat="server" Width="355px"></asp:TextBox> </td>
            </tr><tr>
                <td>Quận/huyện:</td>
                <td class="auto-style4"> <asp:TextBox ID="txtQuan" runat="server" Width="355px"></asp:TextBox> </td>
            </tr><tr>
                <td>Tỉnh/TP:</td>
                <td class="auto-style4"> <asp:TextBox ID="txtTP" runat="server" Width="355px"></asp:TextBox> </td>
            </tr><tr>
                <td  colspan="2"> </td>
            </tr><tr>
                <td colspan="2" style="text-align:center;"> 
                    <asp:Button ID="butDongY" runat="server"
                        Text="Thanh Toán Khi Nhận Hàng" 
                        ForeColor="#000099" Font-Size="Medium" 
                        style="font-size: small" Width="311px" 
                        OnClick="butDongY_Click" Height="44px" /> 
                        &nbsp; 
                        <asp:Label ID="lblStatus" runat="server"
                            ForeColor="#0033CC" style="font-size: 14px">
                        </asp:Label>
                </td>
            </tr>
            <tr>
                <td  colspan="2"> </td>
            </tr>
        </table>            
    </div>        
</asp:Content>
