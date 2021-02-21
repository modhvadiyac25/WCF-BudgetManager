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
            Label3.Text = "page loaded";
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Label3.Text = "button clicked !!";

            //EmployeeClient.ServiceReference2.EmployeeServiceClient proxy = new
            //   EmployeeClient.ServiceReference2.EmployeeServiceClient("BasicHttpBinding_IEmployeeService1");

           

            EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
                           EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            string fn = fnm.Text;
            string ln = lnm.Text;
            string mobile_no = mno.Text;
            string email = eid.Text;
            string password = pass.Text;
            string cpassword = cpass.Text;
            Label3.Text = fnm.Text +" " + lnm.Text +""+ mno.Text+""+ eid.Text+"" + pass.Text+""+ cpass.Text;

            string ack = proxy.saveUser(fn, ln, mobile_no, email, password);
            
            if (0 == String.Compare(ack , "saved"))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                Label3.Text = "Registration successfully";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('something went wrong')", true);

                Label3.Text = ack;
            }
        }
    }
}