using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS
{
    public partial class DonHang : System.Web.UI.Page
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
            grdDonHang.DataSource = dt;
            grdDonHang.DataBind();
            grdDonHang.Columns[0].ControlStyle.Width = 80;
            grdDonHang.Columns[1].ControlStyle.Width = 150;
            grdDonHang.Columns[2].ControlStyle.Width = 80;
            grdDonHang.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            grdDonHang.Columns[3].ControlStyle.Width = 80;
            grdDonHang.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            grdDonHang.Columns[4].ControlStyle.Width = 100;
            grdDonHang.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            if (dt != null)
            {
                double tong = (double)Session["tong"];
                lblTongTien.Text = "Tổng tiền trên giỏ hàng là:" + String.Format("{0:0,000}", tong);
            }
        }

        protected void butDongY_Click(object sender, EventArgs e)
        {
            DateTime d = DateTime.Now;
            string maDonHang = CreateKey("HDB");
            Session["txtHoTen"] = txtHoTen;
            Session["txtEmail"] = txtEmail;
            Session["txtDienThoai"] = txtDienThoai;
            Session["txtSoNha"] = txtSoNha;
            Session["txtDuong"] = txtDuong;
            Session["txtPhuong"] = txtPhuong;
            Session["txtQuan"] = txtQuan;
            Session["txtTP"] = txtTP;
            Session["maDH"] = maDonHang;
            
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(txtEmail.Text);
                mail.From = new MailAddress("2121005132@sv.ufm.edu.vn");
                mail.Subject = "Gởi từ shop Bán Hàng Trực Tuyến";
                mail.Body = "Đơn hàng có mã là: " + maDonHang + " sẽ được gởi đến quý khách " +
                        txtHoTen.Text + ". Xin cám ơn!";
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("2121005132@sv.ufm.edu.vn", "Tvy39278");
                client.Send(mail);
                Server.Transfer("GoiDonHang.aspx");
            }
            catch (SmtpFailedRecipientException ex)
            {
                lblStatus.Text = "Mail không được gởi! " + ex.FailedRecipient;
            }
            
        }
       
        

        public static string CreateKey(string tiento)
        {
            string key = tiento;
            string[] partsDay;
            partsDay = DateTime.Now.ToShortDateString().Split('/');
            //Ví dụ 07/08/2009
            string d = String.Format("{0}{1}{2}", partsDay[0], partsDay[1], partsDay[2]);
            key = key + d;
            string[] partsTime;
            partsTime = DateTime.Now.ToLongTimeString().Split(':');
            //Ví dụ 7:08:03 PM hoặc 7:08:03 AM
            if (partsTime[2].Substring(3, 2) == "PM")
                partsTime[0] = ConvertTimeTo24(partsTime[0]);
            if (partsTime[2].Substring(3, 2) == "AM")
                if (partsTime[0].Length == 1)
                    partsTime[0] = "0" + partsTime[0];
            //Xóa ký tự trắng và PM hoặc AM
            partsTime[2] = partsTime[2].Remove(2, 3);
            string t;
            t = String.Format("_{0}{1}{2}", partsTime[0], partsTime[1], partsTime[2]);
            key = key + t;
            return key;
        }
        public static string ConvertTimeTo24(string hour)
        {
            string h = "";
            switch (hour)
            {
                case "1":
                    h = "13";
                    break;
                case "2":
                    h = "14";
                    break;
                case "3":
                    h = "15";
                    break;
                case "4":
                    h = "16";
                    break;
                case "5":
                    h = "17";
                    break;
                case "6":
                    h = "18";
                    break;
                case "7":
                    h = "19";
                    break;
                case "8":
                    h = "20";
                    break;
                case "9":
                    h = "21";
                    break;
                case "10":
                    h = "22";
                    break;
                case "11":
                    h = "23";
                    break;
                case "12":
                    h = "0";
                    break;
            }
            return h;
        }
    }
}

