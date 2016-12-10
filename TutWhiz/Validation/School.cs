using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace Validation
{
    class School
    {
        public static bool validateSchool(string name, out string schoolName)
        {
            schoolName = ""; 
            Regex match = new Regex("[a-zA-Z0-9-]");
            bool valid = match.IsMatch(name);
            string[] parts = name.Split(' '); 
            foreach (string part in parts)
            {
                string firstLetter = part.Substring(0, 1);
                schoolName += firstLetter + part.Substring(1) + " ";
            }
            return match.IsMatch(name);
        }
    }
}
