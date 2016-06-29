using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TutWhiz.App_Code
{
    public class TutWhizDepartment
    {
        int _ID;
        TutWhizSchool _School;
        string _Name; 
        public TutWhizDepartment()
        {
            this._ID = 0;
            this._School = new TutWhizSchool();
            this._Name = ""; 
        }
        public TutWhizDepartment(TutWhizSchool school, string name)
        {
            this._School = school;
            this._Name = name;
        }
        public TutWhizDepartment(int id, TutWhizSchool school, string name)
        {
            this._ID = id;
            this._School = school;
            this._Name = name;
        }
        public int ID
        {
            get { return _ID; }
        }
        public TutWhizSchool School
        {
            get { return _School; }
            set { _School = value; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
    }
}