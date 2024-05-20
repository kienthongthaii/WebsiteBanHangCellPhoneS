using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS.Page_Manager
{
    public partial class NhanVien1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Luu_Click(object sender, EventArgs e)
        {
            SqlDataSourceNhanVien.InsertParameters.Clear();
            SqlDataSourceNhanVien.InsertParameters.Add("MaNhanVien", txtMaNhanVien.Text.Trim());
            SqlDataSourceNhanVien.InsertParameters.Add("TenNhanVien", txtTenNhanVien.Text);
            DateTime ngaySinh = cNgaySinh.SelectedDate;
            // Thêm giá trị vào SqlDataSource
            SqlDataSourceNhanVien.InsertParameters.Add("NgaySinh", ngaySinh.ToString("yyyy-MM-dd"));
            string gioiTinh;
            if (rbtNam.Checked)
            {
                gioiTinh = "Nam";
            }
            else if (rbtNu.Checked)
            {
                gioiTinh = "Nu";
            }
            else
            {
                gioiTinh = null; // Hoặc giá trị mặc định nếu không có RadioButton nào được chọn
            }

            // Thêm giá trị vào SqlDataSource
            SqlDataSourceNhanVien.InsertParameters.Add("GioiTinh", gioiTinh);
            SqlDataSourceNhanVien.InsertParameters.Add("DiaChi", txtDiaChi.Text);
            SqlDataSourceNhanVien.InsertParameters.Add("DienThoai", txtDienThoai.Text);
            SqlDataSourceNhanVien.InsertParameters.Add("MaChiNhanh", ddlMaChiNhanh.SelectedValue.Trim());
            SqlDataSourceNhanVien.InsertParameters.Add("MaChucVu", ddlMaChucVu.SelectedValue.Trim());

            SqlDataSourceNhanVien.Insert();
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