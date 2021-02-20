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
        string saveUser(string fn, string ln, int mobile_no, string email, string password);
    }
}
