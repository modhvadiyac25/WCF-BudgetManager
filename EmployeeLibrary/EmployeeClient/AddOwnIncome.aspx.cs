using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeClient
{
    public partial class AddOwnIncome : System.Web.UI.Page
    {
        int uid = 0;
        EmployeeClient.ServiceReference1.EmployeeServiceClient proxy;
        protected void Page_Load(object sender, EventArgs e)
        {
            proxy = new EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");
            uid = Convert.ToInt32(Session["uid"]);
            DataSet dataSet = proxy.getOwnIncomeCategory(uid);
            DropDownList1.DataTextField = dataSet.Tables[0].Columns["oinc_name"].ToString();
            DropDownList1.DataValueField = dataSet.Tables[0].Columns["oinc_Id"].ToString();
            DropDownList1.DataSource = dataSet.Tables[0];
            DropDownList1.DataBind();
        }

        protected void btn_add_oinc_Click(object sender, EventArgs e)
        {
            //EmployeeClient.ServiceReference1.EmployeeServiceClient proxy = new
            //              EmployeeClient.ServiceReference1.EmployeeServiceClient("BasicHttpBinding_IEmployeeService");

            string cat_name = tb_oinc_cat.Text;
            proxy.addOwnIncomeCategory(uid,cat_name);

            DataSet dataSet = proxy.getOwnIncomeCategory(uid);
            DropDownList1.DataTextField = dataSet.Tables[0].Columns["oinc_name"].ToString();
            DropDownList1.DataValueField = dataSet.Tables[0].Columns["oinc_Id"].ToString();

            DropDownList1.DataSource = dataSet.Tables[0];
            DropDownList1.DataBind(); 
        }
        protected void btn_inc_Click(object sender, EventArgs e)
        {
            int income = Convert.ToInt32(tb_oinc.Text);
            string cat = DropDownList1.SelectedItem.Text;
            Label6.Text = proxy.addTransaction(income,cat,uid);
        }
    }
}