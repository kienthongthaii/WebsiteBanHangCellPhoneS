using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS.Page_Manager
{
    public partial class NhanVien : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            LoaiHang_SelectedIndexChanged(sender, e);
            CheckBox1_CheckedChanged(sender, e);
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            GridViewSanPham.Columns[0].Visible = CheckBox1.Checked;
        }

        protected void LoaiHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (LoaiHang.SelectedValue == "*")
            {
                SqlDataSourceSanPham.SelectCommand = "SELECT * FROM [SanPham]";
            }
           
        }

        protected void GridViewSanPham_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                    
                
            
        }

        protected void Luu_Click(object sender, EventArgs e)
        {
            SqlDataSourceSanPham.InsertParameters.Clear();
            SqlDataSourceSanPham.InsertParameters.Add("MaSanPham", txtMaSanPham.Text.Trim());
            SqlDataSourceSanPham.InsertParameters.Add("TenSanPham", txtTenSanPham.Text);
            SqlDataSourceSanPham.InsertParameters.Add("SoLuong", txtSoLuong.Text);
            SqlDataSourceSanPham.InsertParameters.Add("DonGiaNhap", txtDonGiaNhap.Text);
            SqlDataSourceSanPham.InsertParameters.Add("DonGiaBan", txtDonGiaBan.Text);
            SqlDataSourceSanPham.InsertParameters.Add("GhiChu", txtGhiChu.Text);
            SqlDataSourceSanPham.InsertParameters.Add("MaLoaiHang", ddlMaLoaiHang.SelectedValue.Trim());
            SqlDataSourceSanPham.InsertParameters.Add("MaKho", ddlMaKho.SelectedValue.Trim());
            SqlDataSourceSanPham.InsertParameters.Add("MaNCC", ddlMaNhaCungCap.SelectedValue.Trim());
            SqlDataSourceSanPham.InsertParameters.Add("Anh", "~\\Images\\" + System.IO.Path.GetFileName(FileUploadAnh.FileName));

            SqlDataSourceSanPham.Insert();

            // 3. Luu (copy) hinh vua duoc nsd Upload vao thu muc ~\\Image\\ cua App
            // Offile
            string relativePath = "~\\Images\\" + FileUploadAnh.FileName.Trim();
            string absolutePath = Server.MapPath(relativePath);
            FileUploadAnh.SaveAs(absolutePath);
            // khi App nay duoc copy di noi khac => thi Update lai path
            // Online (khi upload len Host, Vd: Somee thi phai dung path vat ly cua somee - tuy nhien tuy thuoc vao bao mat cua app
            // FileUpLoadHinh.SaveAs("")

            string script = "alert('Thêm dữ liệu thành công.');";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            // Tai thong tin TB moi them len GridView tren Web
            GridViewSanPham.DataBind();
        }
    }
}