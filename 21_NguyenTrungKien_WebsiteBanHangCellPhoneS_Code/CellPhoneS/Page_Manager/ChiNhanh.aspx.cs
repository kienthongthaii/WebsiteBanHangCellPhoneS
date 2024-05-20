using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS.Page_Manager
{
    public partial class ChiNhanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Luu_Click(object sender, EventArgs e)
        {
          SqlDataSourceChiNhanh.InsertParameters.Clear();
          SqlDataSourceChiNhanh.InsertParameters.Add("MaChiNhanh", txtMaChiNhanh.Text.Trim());
          SqlDataSourceChiNhanh.InsertParameters.Add("TenChiNhanh", txtTenChiNhanh.Text);
          SqlDataSourceChiNhanh.InsertParameters.Add("DiaChi", txtDiaChi.Text);
          SqlDataSourceChiNhanh.InsertParameters.Add("DienThoai", txtDienThoai.Text);

          SqlDataSourceChiNhanh.Insert();
            // khi App nay duoc copy di noi khac => thi Update lai path
            // Online (khi upload len Host, Vd: Somee thi phai dung path vat ly cua somee - tuy nhien tuy thuoc vao bao mat cua app
            // FileUpLoadHinh.SaveAs("")

            string script = "alert('Thêm dữ liệu thành công.');";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            // Tai thong tin TB moi them len GridView tren Web
            GridViewChiNhanh.DataBind();
        }
    }
}