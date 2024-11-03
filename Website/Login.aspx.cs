using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string uName = Request.Form["uName"];
            string pass = Request.Form["pass"];
            string sql1 = "select * from [info] where uName='" + uName + "' and pass='" + pass + "'";
            DataTable table = MyAdoHelper.ExecuteDataTable("DataBase.mdf", sql1); 
            if (MyAdoHelper.IsExist("DataBase.mdf", sql1)) //בודק עם קיים משתמש
            {
                Session["user"] = uName;
                Application.Lock();
                Application["counter"] = (int)Application["counter"] + 1;
                Application.UnLock();
                if (table.Rows[0]["admin"].Equals("yes")) //בודק אם אדמין
                {
                    Session["admin"] = "true";
                    Response.Redirect("Admin.aspx"); //אם אדמין שולח לעמוד אדמין
                }
                Response.Redirect("CustomDress.aspx"); //עמוד מוגן
            }
            else
                msg = "Wrong username or password!";
        }
    } 
}