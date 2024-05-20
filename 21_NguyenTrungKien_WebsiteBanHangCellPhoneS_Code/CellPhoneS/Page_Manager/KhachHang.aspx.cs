using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS.Page_Manager
{
    public partial class KhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Luu_Click(object sender, EventArgs e)
        {
            SqlDataSourceKhachHang.InsertParameters.Clear();
            SqlDataSourceKhachHang.InsertParameters.Add("MaKhachHang", txtMaNhanVien.Text.Trim());
            SqlDataSourceKhachHang.InsertParameters.Add("TenKhach", txtTenNhanVien.Text);
            SqlDataSourceKhachHang.InsertParameters.Add("DiaChi", txtDiaChi.Text);
            SqlDataSourceKhachHang.InsertParameters.Add("DienThoai", txtDienThoai.Text);
            SqlDataSourceKhachHang.InsertParameters.Add("HangThanhVien", txtHangThanhVien.Text);

            SqlDataSourceKhachHang.Insert();
            // khi App nay duoc copy di noi khac => thi Update lai path
            // Online (khi upload len Host, Vd: Somee thi phai dung path vat ly cua somee - tuy nhien tuy thuoc vao bao mat cua app
            // FileUpLoadHinh.SaveAs("")

            string script = "alert('Thêm dữ liệu thành công.');";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            // Tai thong tin TB moi them len GridView tren Web
            GridViewNhanVien.DataBind();
        }
    }
}