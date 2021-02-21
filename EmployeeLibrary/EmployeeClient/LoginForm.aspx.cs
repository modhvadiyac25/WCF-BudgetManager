using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeClient
{
    public partial class LoginForm : System.Web.UI.Page
    {
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label4.Text = "button clicked";
            //EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
            //                EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            //string username = email.Text;
            //string password = pass.Text;

            //Label4.Text = proxy.login("jeet@g.c", "jeet");
            //Label4.Text = i++.ToString();
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Label4.Text = "clicked";
        }
    }
}