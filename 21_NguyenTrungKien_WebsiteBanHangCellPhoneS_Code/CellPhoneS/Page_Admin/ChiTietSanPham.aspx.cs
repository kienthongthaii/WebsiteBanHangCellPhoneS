using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string MaSanPham = "";
            if (Request.QueryString["MaSanPham"] != null)
                MaSanPham = Request.QueryString["MaSanPham"];
            Session["MaSanPham"] = MaSanPham;
            LoadSP(MaSanPham);
        }
        protected void LoadSP(string MaSanPham)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlDataAdapter adapt = new SqlDataAdapter("SELECT MaSanPham, TenSanPham, DonGiaBan, MaLoaiHang, Anh, GhiChu FROM SanPham WHERE MaSanPham=" + "'" + MaSanPham + "'", con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            if (dt.Rows.Count == 0)
                return;
            lblTenSanPham.Text = dt.Rows[0]["TenSanPham"].ToString();
            lblMaSanPham.Text = "Mã hàng: " + dt.Rows[0]["MaSanPham"].ToString();
            lblDonGiaBan.Text = "Giá : " + dt.Rows[0]["DonGiaBan"].ToString();
            imgHinh.ImageUrl = dt.Rows[0]["Anh"].ToString();
            imgHinh.Height = 200;
            imgHinh.Width = 220;
            lblGhiChu.Text = dt.Rows[0]["GhiChu"].ToString();
            ViewState["SanPham"] = dt;
        }
        protected void butInsert_Click(object sender, EventArgs e)
        {
            DataTable dtSP = (DataTable)ViewState["SanPham"];
            DataTable dtGH;     // Gio hang
            int Soluong = 0;
            if (Session["SanPham"] == null)    // tao gio hang
            {
                dtGH = new DataTable();
                dtGH.Columns.Add("MaSanPham");
                dtGH.Columns.Add("TenSanPham");
                dtGH.Columns.Add("DonGiaBan");
                dtGH.Columns.Add("SoLuong");
                dtGH.Columns.Add("TongTien");
            }
            else // lay gio hang tu Session
                dtGH = (DataTable)Session["SanPham"];
            string MaSanPham = (string)Session["MaSanPham"];
            int pos = TimSP(MaSanPham, dtGH);        // tim vi tri san pham trong gio hang
            if (pos != -1)  // neu tim thay tai vi tri pos
            {
                //cap nhat lai cot so luong, tong tien
                Soluong = Convert.ToInt32(dtGH.Rows[pos]["SoLuong"]) + int.Parse(txtSoluong.Text);
                dtGH.Rows[pos]["SoLuong"] = Soluong;
                dtGH.Rows[pos]["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["DonGiaBan"]) * Soluong;
            }
            else    //san pham chua co trong gio hang: Them vao gio hang
            {
                Soluong = int.Parse(txtSoluong.Text);
                DataRow dr = dtGH.NewRow();//tạo một dòng mới
                                           // gán dữ liệu cho từng cột trong dòng mới
                dr["MaSanPham"] = dtSP.Rows[0]["MaSanPham"];
                dr["TenSanPham"] = dtSP.Rows[0]["TenSanPham"];
                dr["DonGiaBan"] = dtSP.Rows[0]["DonGiaBan"];
                dr["SoLuong"] = int.Parse(txtSoluong.Text);
                dr["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["DonGiaBan"]) * Soluong;
                //thêm dòng mới vào giỏ hàng
                dtGH.Rows.Add(dr);
            }
            //lưu gio hang vao session
            Session["SanPham"] = dtGH;
            //  Label lbSoluong = (Label)this.Master.FindControl("lbSoluong");
            //lbSoluong.Text = dtGH.Rows.Count.ToString();
            Response.Redirect("GioHang.aspx");
        }
        public static int TimSP(string MaSanPham, DataTable dt)
        {
            int pos = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["MaSanPham"].ToString().ToLower() == MaSanPham.ToLower())
                {
                    pos = i;
                    break;
                }
            }
            return pos;
        }


    }
}