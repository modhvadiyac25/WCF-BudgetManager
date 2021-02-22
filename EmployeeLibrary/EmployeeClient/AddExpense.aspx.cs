using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeClient
{
    public partial class AddExpense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
            EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            DataSet dataSet = proxy.addExpense();
            DropDownList1.DataTextField = dataSet.Tables[0].Columns["exp_cat"].ToString();
            DropDownList1.DataValueField = dataSet.Tables[0].Columns["expid"].ToString();

            DropDownList1.DataSource = dataSet.Tables[0];
            DropDownList1.DataBind();
        }

        protected void btn_exp_Click(object sender, EventArgs e)
        {

        }
    }
}