using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS.Page_Manager
{
    public partial class LoaiHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Luu_Click(object sender, EventArgs e)
        {
            SqlDataSourceLoaiHang.InsertParameters.Clear();
            SqlDataSourceLoaiHang.InsertParameters.Add("MaLoaiHang", txtMaLoaiHang.Text.Trim());
            SqlDataSourceLoaiHang.InsertParameters.Add("TenLoaiHang", txtTenLoaiHang.Text);

            SqlDataSourceLoaiHang.Insert();
            // khi App nay duoc copy di noi khac => thi Update lai path
            // Online (khi upload len Host, Vd: Somee thi phai dung path vat ly cua somee - tuy nhien tuy thuoc vao bao mat cua app
            // FileUpLoadHinh.SaveAs("")

            string script = "alert('Thêm dữ liệu thành công.');";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            // Tai thong tin TB moi them len GridView tren Web
            GridViewLoaiHang.DataBind();
        }
    }
}