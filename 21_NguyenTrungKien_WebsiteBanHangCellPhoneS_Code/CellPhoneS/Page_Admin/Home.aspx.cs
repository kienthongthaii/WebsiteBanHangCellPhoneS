using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlDataSource2.SelectCommand = "SELECT * FROM SANPHAM";
            lstSanPham.DataBind();
            //LoaiSanPham_SelectedIndexChanged(sender, e);
        }

        protected void lstSanPham_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\ChiTietSanPham.aspx");
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            if (txtTimKiem.Text.Trim() == "")
            {
                lblTB.Visible = true;
                lblTB.Text = "Vui lòng nhập thông tin tìm kiếm";
                return;
            }
            else
            {
                lblTB.Visible = false;
            }

            string timkiem = txtTimKiem.Text.Trim();
            string querry = "SELECT * FROM [SanPham] WHERE (TenSanPham LIKE '%' + @timkiem + '%')";

            // Xóa các tham số trước khi thêm mới
            SqlDataSource2.SelectParameters.Clear();

            // Thêm tham số mới
            SqlDataSource2.SelectParameters.Add("timkiem", timkiem);

            // Thiết lập truy vấn
            SqlDataSource2.SelectCommand = querry;

            // Làm mới dữ liệu
            lstSanPham.DataBind();
        }

        protected void Xeptheo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string querry = "SELECT * FROM [SanPham]";
            if (Xeptheo.SelectedValue.Trim() == "*")
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [SanPham]";
            }
            else if (Xeptheo.SelectedValue.Trim() == "TT")
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [SanPham] ORDER BY TenSanPham ASC";
            }
            else if (Xeptheo.SelectedValue.Trim() == "GTD")
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [SanPham] ORDER BY DonGiaBan ASC";
            }
            else if (Xeptheo.SelectedValue.Trim() == "GDD")
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [SanPham] ORDER BY DonGiaBan DESC";
            }

            // Thiết lập truy vấn
            //SqlDataSource2.SelectCommand = querry;

            // Làm mới dữ liệu
            lstSanPham.DataBind();
        }

        protected void LoaiSanPham_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (LoaiSanPham.SelectedValue.Trim() == "*")
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [SanPham]";
            }
            else
            {
                // Sử dụng tham số để tránh SQL Injection
                SqlDataSource2.SelectCommand = "SELECT * FROM [SanPham] WHERE MaLoaiHang = @MaLoaiHang";
                SqlDataSource2.SelectParameters.Clear();
                SqlDataSource2.SelectParameters.Add("MaLoaiHang", LoaiSanPham.SelectedValue.Trim());
            }

            // Làm mới dữ liệu
            lstSanPham.DataBind();
        }

    }
}