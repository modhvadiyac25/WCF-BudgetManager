using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeClient
{
    public partial class Home : System.Web.UI.Page
    {
        int uid =0 ;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Convert.ToInt32(Session["uid"]);
            EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
                           EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            Label2.Text = proxy.getName(uid);
        }
    }
}