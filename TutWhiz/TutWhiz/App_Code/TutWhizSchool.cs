using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TutWhiz.App_Code
{
    public class TutWhizSchool
    {
        int _ID;
        string _Name;
        string _State;
        string _City;
        public TutWhizSchool ()
        {
            this._ID = 0; 
            this._Name = "";
            this._State = "";
            this._City = ""; 
        }
        public TutWhizSchool (string name, string state, string city)
        {
            this._Name = name;
            this._State = state;
            this._City = city; 
        }
        public TutWhizSchool(int id, string name, string state, string city)
        {
            this._ID = id; 
            this._Name = name;
            this._State = state;
            this._City = city;
        }
        public int ID
        {
            get { return _ID; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
        public string State
        {
            get { return _State; }
            set { _State = value; }
        }
        public string City
        {
            get { return City; }
            set { City = value; }
        }
    }
}