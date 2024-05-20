using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellPhoneS
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            // Lấy tên đăng nhập và mật khẩu từ các TextBox trong Login control
            string username = Login1.UserName;
            string password = Login1.Password;

            // Thực hiện kiểm tra thông tin đăng nhập bằng Stored Procedure
            int userCount;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("ValidateUser", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    connection.Open();
                    userCount = (int)command.ExecuteScalar();
                }
            }

            // Kiểm tra kết quả của kiểm tra thông tin đăng nhập
            if (userCount > 0)
            {
                // Người dùng hợp lệ, xác thực và chuyển hướng đến trang quản lý
                e.Authenticated = true;
                FormsAuthentication.RedirectFromLoginPage(username, Login1.RememberMeSet);
            }
            else
            {
                // Người dùng không hợp lệ, thông báo lỗi
                e.Authenticated = false;
                Login1.FailureText = "Tên đăng nhập hoặc mật khẩu không chính xác.";
            }
        }


    }
}