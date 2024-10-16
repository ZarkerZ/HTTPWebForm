using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTPWebForm
{
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];

            username = HttpUtility.HtmlEncode(username);

            if (!string.IsNullOrEmpty(username))
            {
                string greeting = $"Welcome to my humble abode, {username}!";
                greetingLabel.Text = greeting;
            }
            else
            {
                greetingLabel.Text = "An imposter! 🚓🚓🚓🚓";
            }
        }
        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }
    }
}