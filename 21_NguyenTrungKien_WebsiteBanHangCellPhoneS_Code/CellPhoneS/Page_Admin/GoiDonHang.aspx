<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="GoiDonHang.aspx.cs" Inherits="CellPhoneS.GoiDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>THÔNG BÁO</h2>
    <table style="width:500px">
        <tr>
            <td style="background-color:lightgoldenrodyellow; font-size: 16px">
                <asp:Label ID="lblThongBao" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
