using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace TutWhiz.App_Code
{
    public class TutWhizUser
    {
        int _ID;
        string _FirstName;
        string _LastName;
        string _UserName;
        string _Email;
        string _Password;
        public TutWhizUser() { }
        public TutWhizUser(string fn, string ln, string un, string em, string pass)
        {
            this._FirstName = fn;
            this._LastName = ln;
            this._UserName = un;
            this._Email = em;
            this._Password = pass;
        }
        public TutWhizUser(int n, string fn, string ln, string un, string em, string pass)
        {
            this._ID = n;
            this._FirstName = fn;
            this._LastName = ln;
            this._UserName = un;
            this._Email = em;
            this._Password = pass;
        }
        public int ID
        {
            get { return _ID; }
        }
        public string FirstName
        {
            get { return _FirstName; }
            set { _FirstName = value; }
        }
        public string LasttName
        {
            get { return _LastName; }
            set { _LastName = value; }
        }
        public string UserName
        {
            get { return _UserName; }
            set { _UserName = value; }
        }
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }
        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }
        public static bool validateUser(string username, string password)
        {
            // run database stored procedure to see if username and password combination are valid, return true if valid and false if invalid
            using (MySqlConnection cn = new MySqlConnection(TutWhizConnection.tutWhizConnectionString))
            {
                MySqlCommand cmd = new MySqlCommand("ValidateUser", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                MySqlParameter paramUserName = new MySqlParameter("user", username);
                MySqlParameter paramPassword = new MySqlParameter("pass", password);

                cmd.Parameters.Add(paramUserName);
                cmd.Parameters.Add(paramPassword);

                cn.Open();
                int returncode = Convert.ToInt32(cmd.ExecuteScalar());
                return returncode == 1;
            }
        }
        public static bool isUsernameFree(string username)
        {
            // run database stored procedure to see if username exists, return false if username exists and return true if username is untaken
            using (MySqlConnection cn = new MySqlConnection(TutWhizConnection.tutWhizConnectionString))
            {
                MySqlCommand cmd = new MySqlCommand("checkusername", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                MySqlParameter paramUserName = new MySqlParameter("user", username);

                cmd.Parameters.Add(paramUserName);

                cn.Open();
                int returncode = Convert.ToInt32(cmd.ExecuteScalar());
                return returncode == 0;
            }
        }
        public static bool createUser(TutWhizUser newUser)
        {
            // run stored procedure to create user, return true if successful and false if unsuccessful 
            using (MySqlConnection cn = new MySqlConnection(TutWhizConnection.tutWhizConnectionString))
            {
                MySqlCommand cmd = new MySqlCommand("AddUser", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                MySqlParameter paramUserName = new MySqlParameter("user", newUser.UserName);
                MySqlParameter paramEmailAddress = new MySqlParameter("email", newUser.Email);
                MySqlParameter paramPassword = new MySqlParameter("pass", newUser.Password);
                MySqlParameter paramFirstName = new MySqlParameter("fn", newUser.FirstName);
                MySqlParameter paramLastName = new MySqlParameter("ln", newUser.LasttName);

                cmd.Parameters.Add(paramUserName);
                cmd.Parameters.Add(paramEmailAddress);
                cmd.Parameters.Add(paramPassword);
                cmd.Parameters.Add(paramFirstName);
                cmd.Parameters.Add(paramLastName);

                cn.Open();
                int returncode = Convert.ToInt32(cmd.ExecuteScalar());
                return returncode == 1;
            }
        }
        public static bool updateUser(TutWhizUser updateUser)
        {
            // run stored procedure to create user, return true if successful and false if unsuccessful 
            using (MySqlConnection cn = new MySqlConnection(TutWhizConnection.tutWhizConnectionString))
            {
                MySqlCommand cmd = new MySqlCommand("UpdateUser", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                MySqlParameter paramID = new MySqlParameter("id", updateUser.ID);
                MySqlParameter paramUserName = new MySqlParameter("user", updateUser.UserName);
                MySqlParameter paramEmailAddress = new MySqlParameter("email", updateUser.Email);
                MySqlParameter paramPassword = new MySqlParameter("pass", updateUser.Password);
                MySqlParameter paramFirstName = new MySqlParameter("fn", updateUser.FirstName);
                MySqlParameter paramLastName = new MySqlParameter("ln", updateUser.LasttName);

                cmd.Parameters.Add(paramUserName);
                cmd.Parameters.Add(paramEmailAddress);
                cmd.Parameters.Add(paramPassword);
                cmd.Parameters.Add(paramFirstName);
                cmd.Parameters.Add(paramLastName);

                cn.Open();
                int returncode = Convert.ToInt32(cmd.ExecuteScalar());
                return returncode == 1;
            }
        }
    }
}