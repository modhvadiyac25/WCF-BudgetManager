using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeClient
{
    public partial class AddIncome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
          EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            DataSet dataSet = proxy.addInncome();
            DropDownList1.DataTextField = dataSet.Tables[0].Columns["inc_cat"].ToString();
            DropDownList1.DataValueField = dataSet.Tables[0].Columns["incid"].ToString();

            DropDownList1.DataSource = dataSet.Tables[0];
            DropDownList1.DataBind();
        }
    }
}