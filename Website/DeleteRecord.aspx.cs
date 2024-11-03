 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DeleteRecord : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string uName = Request.QueryString["uName"].ToString();
        if (uName != "Hila15")
        {
            string sqlDelete = "Delete from [info] where uName='" + uName + "'";
            MyAdoHelper.DoQuery("Database.mdf", sqlDelete);
            Response.Redirect("Admin.aspx");
        }
        Response.Redirect("Admin.aspx");

    }
    
}