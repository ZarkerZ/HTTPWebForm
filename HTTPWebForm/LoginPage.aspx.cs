using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTPWebForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = HttpContext.Current.Request.Form["usernameTextBox"];
                string password = HttpContext.Current.Request.Form["passwordTextBox"];

                username = HttpContext.Current.Server.HtmlEncode(username);
                password = HttpContext.Current.Server.HtmlEncode(password);

                string redirectUrl = string.Empty;

                if (username == "admin" && password == "admin123")
                {
                    redirectUrl = "AdminPage.aspx?username=" + username;
                }
                else if (username == "student" && password == "student123")
                {
                    redirectUrl = "StudentPage.aspx?username=" + username;
                }
                else if (username == "teacher" && password == "teacher123")
                {
                    redirectUrl = "TeacherPage.aspx?username=" + username;
                }
                else
                {
                    errorMessage.Text = "Invalid username or password";
                    errorMessage.Visible = true;
                    return;
                }
                Response.Redirect(redirectUrl);
            }
        }
    }
}