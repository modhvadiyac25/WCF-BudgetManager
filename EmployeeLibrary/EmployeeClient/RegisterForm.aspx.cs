using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeClient
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  Label1.Text = " ";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            EmployeeClient.ServiceReference2.EmployeeServiceClient proxy = new
               EmployeeClient.ServiceReference2.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");


            string fn = fname.Text;
            string ln = lname.Text;
            int mobile_no =Convert.ToInt32(mno.Text);
            string email = mail.Text;
            string password = pass1.Text;

            Label1.Text  = proxy.saveUser(fn,ln,mobile_no,email, password);
            string ack = "";
            if (ack == "saved")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                Label1.Text = "Registration successfully";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('something went wrong')", true);

                Label1.Text = ack;
            }

            

        }
    }
}