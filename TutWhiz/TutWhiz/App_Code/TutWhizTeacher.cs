using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TutWhiz.App_Code
{
    public class TutWhizTeacher
    {
        int _ID;
        TutWhizDepartment _Department;
        string _FirstName;
        string _LastName; 
        public TutWhizTeacher()
        {
            this._ID = 0;
            this._Department = new TutWhizDepartment();
            this._FirstName = "";
            this._LastName = ""; 
        }
        public TutWhizTeacher(TutWhizDepartment detp, string firstname, string lastname)
        {
            this._Department = detp; 
            this._FirstName = firstname;
            this._LastName = lastname;
        }
        public TutWhizTeacher(int id, TutWhizDepartment detp, string firstname, string lastname)
        {
            this._ID = id; 
            this._Department = detp;
            this._FirstName = firstname;
            this._LastName = lastname;
        }
        public int ID
        {
            get { return _ID; }
        }
        public TutWhizDepartment Department
        {
            get { return _Department; }
            set { _Department = value; }
        }
        public string FirstName
        {
            get { return _FirstName; }
            set { _FirstName = value; }
        }
        public string LastName
        {
            get { return _LastName; }
            set { _LastName = value; }
        }
    }
}