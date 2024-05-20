using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS
{
    public partial class SanPham : System.Web.UI.Page
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }
        protected void LoadData()
        {
            dt = (DataTable)Session["SanPham"];
            dsSanPham.DataSource = dt;
            dsSanPham.DataBind();
            dsSanPham.Columns[2].ControlStyle.Width = 80;
            dsSanPham.Columns[3].ControlStyle.Width = 80;
            dsSanPham.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            dsSanPham.Columns[4].ControlStyle.Width = 80;
            dsSanPham.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            dsSanPham.Columns[5].ControlStyle.Width = 100;
            dsSanPham.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            if (dt != null)
            {
                double tong = TinhTongTien(dt);
                Session["tong"] = tong;     // lưu để truyền qua trang DonHang.aspx
                lblTongTien.Text = "Tổng tiền trên giỏ hàng là:" + String.Format("{0:0,000}", tong);
            }
        }

        protected void dsSanPham_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            dt = (DataTable)Session["SanPham"];
            GridViewRow row = dsSanPham.Rows[e.RowIndex];
            TextBox txtSoluong = (TextBox)(row.Cells[5].Controls[0]);
            int Soluong = Convert.ToInt32(txtSoluong.Text);
            dt.Rows[row.DataItemIndex]["SoLuong"] = txtSoluong.Text;
            dt.Rows[row.DataItemIndex]["TongTien"] =
                Convert.ToDouble(dt.Rows[row.DataItemIndex]["Gia"]) * Soluong;
            //Reset the edit index.
            dsSanPham.EditIndex = -1;
            Session["SanPham"] = dt;
            LoadData();
        }
        protected void dsSanPham_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dsSanPham.EditIndex = e.NewEditIndex;
            LoadData();
        }
        protected void dsSanPham_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dt = (DataTable)Session["SanPham"];
            GridViewRow row = dsSanPham.Rows[e.RowIndex];
            dt.Rows[row.DataItemIndex].Delete();
            dsSanPham.EditIndex = -1;
            Session["SanPham"] = dt;
            LoadData();
        }
        protected void dsSanPham_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dsSanPham.EditIndex = -1;
            LoadData();
        }
        protected double TinhTongTien(DataTable dt)
        {
            if (dt == null)
                return 0;
            double sum = 0;
            foreach (DataRow row in dt.Rows)
                sum += Convert.ToDouble(row["TongTien"]);
            return sum;
        }
        protected void butDathang_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["SanPham"];
        }
    }
}