using EmployeeLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ServiceHostConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            try 
            {
                Type t = typeof(EmployeeService);
                Uri tcp = new Uri("net.tcp://localhost:8010/EmployeeService");
                Uri http = new Uri("http://localhost:8000/EmployeeService");
                ServiceHost host = new ServiceHost(t, tcp, http);
                host.Open();
                Console.WriteLine("Service published at " + DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss"));
                Console.ReadLine();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
    }
}

