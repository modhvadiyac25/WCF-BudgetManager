using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeClient
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = "page Load";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
                            EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            string username = email.Text;
            string password = pass.Text;

            /*Session["uid"]*/ Label4.Text = proxy.login(username.ToString(), password.ToString());
            // = Session["uid"].ToString() + "this is user id ";
            
            // Label4.Text = i++.ToString();
        }
    }
}