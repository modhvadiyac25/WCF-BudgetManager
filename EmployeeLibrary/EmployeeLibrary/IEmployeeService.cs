using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace EmployeeLibrary
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IEmployeeService" in both code and config file together.
    [ServiceContract]
    public interface IEmployeeService
    {
        //[OperationContract]
        //DataSet GetEmployees();

        //[OperationContract]
        //Employee GetEmployee(int id);

        [OperationContract]
        string saveUser(string fn, string ln, string mobile_no, string email, string password);

        [OperationContract]
        string login(string username, string password);

        [OperationContract]
        string getName(int uid);

        [OperationContract]
        DataSet addInncome();

        [OperationContract]
        DataSet addExpense();

        [OperationContract]
        string addOwnIncomeCategory(int uid,string cat_name);

        [OperationContract]
        DataSet getOwnIncomeCategory(int uid);

        [OperationContract]
        string addTransaction(int income,string cat,int uid);
         
    }
}
