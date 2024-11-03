using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePass : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string uName = Request.Form["uName"];
            string pass = Request.Form["pass"];
            string newpass = Request.Form["npass"];
            string sql1 = "select * from [info] where uName='" + uName + "' and pass='" + pass + "'";
            if (MyAdoHelper.IsExist("Database.mdf", sql1))
            {
                string sql2 = "UPDATE [info] SET pass='" + newpass + "' WHERE uName = '" + uName + "' and pass= '" + pass + "'";
                MyAdoHelper.DoQuery("Database.mdf", sql2);
                msg = "password updated!";
                
                Response.Redirect("CustomDress.aspx");
            }
            else
                msg = "username or old password are incorrect";
        }
    }
}