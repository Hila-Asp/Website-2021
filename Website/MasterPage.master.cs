using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string msg;
    public string custom= "<th style="+'"'+"width:52%"+'"'+"></th>";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        { 
            msg = "" + Session["user"];
            custom = "<th style=" + '"' + "width:43%" + '"' + "></th>";
            custom += "<th style="+'"'+"text-align:center; font-size:20px; font-family:'Footlight MT'; width: 9%" + '"' + "><div class=" + '"' + "normal" + '"' + "><a href=" + '"' + "CustomDress.aspx" + '"' + ">Custom Dress</a> </div></th>";
            string admin = "" + Session["admin"];
            if (admin.Equals("true"))
            {
                custom= "<th style=" + '"' + "width:39%" + '"' + "></th>";
                custom+= "<th style=" + '"' + "text-align:center; font-size:20px; font-family:'Footlight MT'; width: 4%" + '"' + "><div class=" + '"' + "normal" + '"' + "><a href=" + '"' + "Admin.aspx" + '"' + ">Admin</a> </div></th>";
                custom += "<th style=" + '"' + "text-align:center; font-size:20px; font-family:'Footlight MT'; width: 9%" + '"' + "><div class=" + '"' + "normal" + '"' + "><a href=" + '"' + "CustomDress.aspx" + '"' + ">Custom Dress</a> </div></th>";
            }
        }
        else
            msg = "Guest";
    }
}
