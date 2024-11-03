using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string fName = Request.Form["fName"];
            string lName = Request.Form["lName"];
            string uName = Request.Form["uName"];
            string pass = Request.Form["pass"];
            string mail = Request.Form["mail"];
            string phone = Request.Form["phone"];
            string gender = Request.Form["gender"];
            string age = Request.Form["age"];
            string bodytype = Request.Form["bodytype"];
            string hobbies = Request.Form["hobbies"].ToString();
            string sql2 = "Select * from[info] where uName='" + uName + "' and pass='" + pass + "'";
            if (MyAdoHelper.IsExist("Database.mdf", sql2))
            {
                msg = "username already exists";
            }
            else
            {
                string sql= "insert into[info] (fName,lName,uName,pass,mail,phone,gender,age,bodytype,hobbies) values ('" + fName + "', '" + lName + "', '" + uName + "', '" + pass + "', '" + mail + "', '" + phone + "','"+gender+"','"+age+"','"+bodytype+"','"+hobbies+"')";
                MyAdoHelper.DoQuery("Database.mdf", sql);
                msg = "register complete";
                Session["user"] = uName;
                Response.Redirect("CustomDress.aspx");
            }
        }
    }
}