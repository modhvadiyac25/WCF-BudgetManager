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


            employeeclient.servicereference2.employeeserviceclient proxy = new
               employeeclient.servicereference2.employeeserviceclient("basichttpbinding_iemployeeservice");


            string fn = fnm.text;
            string ln = lnm.text;
            string mobile_no = mno.text;
            string email = eid.text;
            string password = pass.text;
            string cpassword = cpass.text;

            label1.text = proxy.saveuser(fn, ln, mobile_no, email, password);
            string ack = "";
            if (ack == "saved")
            {
                scriptmanager.registerclientscriptblock(this, this.gettype(), "alertmessage", "alert('record inserted successfully')", true);
                label1.text = "registration successfully";
            }
            else
            {
                scriptmanager.registerclientscriptblock(this, this.gettype(), "alertmessage", "alert('something went wrong')", true);

                label1.text = ack;
            }
        }
    }
}