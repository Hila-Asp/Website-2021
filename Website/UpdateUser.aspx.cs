using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateUser : System.Web.UI.Page
{
    public string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Request.QueryString["uName"].ToString();
        if (Request.Form["update"] != null)
        {
            string uName = Request.QueryString["uName"].ToString();
            string fName = Request.Form["fName"];
            string lName = Request.Form["lName"];
            string mail = Request.Form["mail"];
            string phone = Request.Form["phone"];
            string gender = Request.Form["gender"];
            string age = Request.Form["age"];
            string bodytype = Request.Form["bodytype"];
            string hobbies = Request.Form["hobbies"].ToString();
            string update = "Update [info] SET ";
            update += "fName='" + fName + "', ";
            update += "lName='" + lName + "', ";
            update += "mail='" + mail + "', ";
            update += "phone='" + phone + "', ";
            update += "gender='" + gender + "', ";
            update += "age='" + age + "', ";
            update += "bodytype='" + bodytype + "', ";
            update += "hobbies='" + hobbies + "' ";
            update += "Where uName='" + uName + "';";
            MyAdoHelper.DoQuery("Database.mdf", update);
            Response.Redirect("Admin.aspx");
        }
    }
}