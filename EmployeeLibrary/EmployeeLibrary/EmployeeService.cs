using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace EmployeeLibrary
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "EmployeeService" in both code and config file together.
    public class EmployeeService : IEmployeeService
    {
        static string connectionString = @"Data Source = (localdb)\MSSQLLocalDB;Initial Catalog = BudgetManager; Integrated Security = True; Connect Timeout = 30; Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection con = new SqlConnection(connectionString);

        public string addTransaction(int income,string cat,int uid)
        {
            DataSet ds=null;
            try
            {
                string d = DateTime.Now.ToString("d/M/yyyy");
                string query = "insert into trasaction(tdate,ttime,t_cat,tot_inc,uid) values (@date,@time,@cat,@inc,@userid)";
                SqlCommand cmd = new SqlCommand(query, con);
                // cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@date", d);
                cmd.Parameters.AddWithValue("@time", DateTime.Now.ToString("h:mm:ss"));
                cmd.Parameters.AddWithValue("@cat", cat);
                cmd.Parameters.AddWithValue("@inc", income);
                cmd.Parameters.AddWithValue("@userid", uid);
                con.Open();
                int ack = cmd.ExecuteNonQuery();
                con.Close();
                if (ack == 1)
                {
                     return "saved";
 
                }
                else
                {
                    return "false";
                }
                

            }
            catch (Exception ex)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return (ex.Message.ToString());
            }

            
        }

        public DataSet getOwnIncomeCategory(int uid)
        {
            con.Open();
            string query = "select * from o_income where uid='" + uid +"'";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public string addOwnIncomeCategory(int uid, string cat_name)
        {
            try
            {
                string query = "insert into o_income (oinc_name,uid) values (@catName,@userid)";
                SqlCommand cmd = new SqlCommand(query, con);
                // cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@catName", cat_name);
                cmd.Parameters.AddWithValue("@userid", uid);
                con.Open();
                int ack = cmd.ExecuteNonQuery();
                con.Close();
                if (ack == 1)
                {
                    return "saved";
                }
                else
                {
                    return "failed";
                }

            }
            catch (Exception ex)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return (ex.Message.ToString());
            }


            return "";
        }

        public DataSet addExpense()
        {
            con.Open();
            SqlCommand com = new SqlCommand("select  expid,exp_cat from expense", con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet addInncome()
        {
            con.Open();
            SqlCommand com = new SqlCommand("select  incid,inc_cat from income", con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public string getName(int uid)
        {
            try
            {
                string query = "select fname,lname from users where uid='" + uid + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.CommandType = CommandType.Text;

                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    return sdr["fname"].ToString() + " " + sdr["lname"].ToString();
                }
                else
                {
                    return "false";

                }
                sdr.Close();
            }
            catch (Exception ex)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return (ex.Message.ToString());
            }
        }

        public string login(string username,string password)
        {
            try
            {
                string query = "select * from users where email='" + username + "' and password='" + password + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.CommandType = CommandType.Text;
         
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    return sdr["uid"].ToString();
                }
                else
                {
                    return "false";

                } 
                sdr.Close(); 
            }
            catch (Exception ex)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return (ex.Message.ToString());
            } 
        }


        public string saveUser(string fn, string ln, string mobile_no, string email, string password)
        {
            try
            {
                string query = "insert into users(fname,lname,email,mno,password) values (@fn,@ln,@email,@mno,@password)";
                SqlCommand cmd = new SqlCommand(query, con);
               // cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fn", fn);
                cmd.Parameters.AddWithValue("@ln", ln);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@mno", mobile_no);
                cmd.Parameters.AddWithValue("@password", password);
                con.Open();
                int ack = cmd.ExecuteNonQuery();
                con.Close();
                if(ack ==1 )
                {
                    return "saved";
                }
                else
                {
                    return "failed";
                }
                
            }
            catch (Exception ex)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return (ex.Message.ToString());
            }
        }
    }
}







//SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=demo;
//    Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;
//    ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

//public DataSet GetEmployees()
//{
//    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM dbo.Sample",
//    @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=demo;
//    Integrated Security=True;Connect Timeout=30;Encrypt=False;
//    TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

//    DataSet ds = new DataSet();
//    da.Fill(ds, "dbo.Sample");
//    return ds;

//}

//public Employee GetEmployee(int id)
//{
//    SqlCommand cmd = new SqlCommand();
//    cmd.Connection = con;
//    cmd.CommandText = "Select employeeId,firstName,lastName FROM dbo.Sample WHERE employeeId = @id";
//    SqlParameter p = new SqlParameter("@id", id);
//    cmd.Parameters.Add(p);
//    con.Open();
//    SqlDataReader reader = cmd.ExecuteReader();
//    Employee emp = new Employee();

//    while(reader.Read())
//    {
//        emp.EmployeeID = reader.GetInt32(0);
//        emp.FirstName = reader.GetString(1);
//        emp.LastName = reader.GetString(2);
//    }
//    reader.Close();
//    con.Close();
//    return emp;
//}