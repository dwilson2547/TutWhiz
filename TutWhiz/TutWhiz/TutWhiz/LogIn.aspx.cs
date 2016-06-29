using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutWhiz.App_Code;

namespace TutWhiz.TutWhiz
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtPassword.Attributes.Add("onKeyPress", "button_click(this,'" + this.btnLogIn.ClientID + "')");
        }
        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            logIn();
        }
        protected void logIn()
        {
            if (TutWhizUser.validateUser(txtUserName.Value.Trim(), txtPassword.Text.Trim()))
            {
                Response.Write("success");
            }
            else
            {
                Response.Write("Failure");
            }
        }
    }
}