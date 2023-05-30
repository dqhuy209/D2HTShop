using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace D2HTShop
{
    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["username"] != null)
            {
                string username = Request.Form["username"];
                string pass = Request.Form["Password"];
                List<User> arr = (List<User>)Application["user"];
                int tg = 0;
                if (arr.Count == 0)
                {
                    loidangnhap.Text = "Tài khoản không tồn tại.Vui lòng kiểm tra email và mật khẩu !";

                }
                else
                {
                    foreach (User u in arr)
                    {
                        if (u.name == username && u.password == pass)
                        {
                            tg = 1;
                            Session["login"] = 1;
                            Session["name"] = u.name;
                            Session["email"] = u.email;
                            break;
                        }
                    }
                    if (tg == 1)
                    {
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        loidangnhap.Text = "Tài khoản hoặc mật khẩu không chính xác.Vui lòng kiểm tra lại email và mật khẩu !";
                    }
                }
            }
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            if (Request.Form["nameRegister"] != null)
            {
                string name = Request.Form["nameRegister"];
                string email = Request.Form["emailRegister"];
                string password = Request.Form["passwordRegister"];

                User user = new User(name, email, password);
                List<User> arr = (List<User>) Application["user"];
                int tg = 0;
                if (arr.Count == 0)
                {
                    arr = new List<User>();
                }else
                {
                    foreach(User u in arr)
                    {
                        if (u.email != email)
                        {

                        }else
                        {
                            loi.Text = "Email đã tồn tại. Vui lòng nhập email khác! ";
                            tg = 1;
                        }
                    }
                }
                if (tg == 1)
                {

                }else
                {
                    arr.Add(user);
                    Application["user"] = arr;
                    Session["login"] = 1;
                    Session["name"] = name;
                    Session["email"] = email;
                    Response.Redirect("index.aspx");
                }
            }
        }

    }
}