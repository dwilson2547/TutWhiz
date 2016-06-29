using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TutWhiz.App_Code
{
    public class TutWhizClass
    {
        int _ID;
        TutWhizDepartment _Department;
        string _Name; 
        public TutWhizClass()
        {
            this._ID = 0;
            this._Department = new TutWhizDepartment();
            this._Name = ""; 
        }
        public TutWhizClass(TutWhizDepartment dept, string name)
        {
            this._Department = dept;
            this._Name = name;
        }
        public TutWhizClass(int id, TutWhizDepartment dept, string name)
        {
            this._ID = id; 
            this._Department = dept;
            this._Name = name;
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
        public string Name
        {
            get { return _Name; }
            set { _Name = value;  }
        }
    }
}