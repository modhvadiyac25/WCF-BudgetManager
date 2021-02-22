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
           // Label4.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
                            EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            string username = email.Text;
            string password = pass.Text;

             String result = proxy.login(username.ToString(), password.ToString());
            if ((String.Compare(result, "false") == 1))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username or PAssword May Incorrect !')", true);
            }
            else
            {
                Session["uid"] = result;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login Succesfully')", true);
                Response.Redirect("Home.aspx");
            }

            // = Session["uid"].ToString() + "this is user id ";
            
            // Label4.Text = i++.ToString();
        }
    }
}