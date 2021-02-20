using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace EmployeeLibrary
{
    [DataContract]
    public class Employee
    {
        private int intId;
        private string strFName;
        private string strLName;

        [DataMember]
        public int EmployeeID
        {
            get { return intId; }
            set { intId = value; }
        }
        [DataMember]
        public string FirstName
        {
            get { return strFName; }
            set { strFName = value; }
        }
        [DataMember]
        public string LastName
        {
            get { return strLName; }
            set { strLName = value; }
        }
    }
}
