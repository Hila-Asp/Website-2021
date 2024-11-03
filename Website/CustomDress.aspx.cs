using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("Home.aspx");
        if (Request.Form["submit"] != null)
        {
            string uName = ""+Session["user"];
            string measurementUnits = Request.Form["measurementUnits"];
            string neck = Request.Form["neck"];
            string bust = Request.Form["bust"];
            string underBust = Request.Form["underBust"];
            string waist = Request.Form["waist"];
            string hip = Request.Form["hip"];
            string shoulders = Request.Form["shoulders"];
            string armLength = Request.Form["armLength"];
            string bicep = Request.Form["bicep"];
            string wrist = Request.Form["wrist"];
            string bustHeight = Request.Form["bustHeight"];
            string STWfront = Request.Form["STWfront"];
            string bustSeparation = Request.Form["bustSeparation"];
            string STWback = Request.Form["STWback"];
            string backWidth = Request.Form["backWidth"];
            string hipHeight = Request.Form["hipHeight"];
            string waistToFloor = Request.Form["waistToFloor"];
            string neckToFloor = Request.Form["neckToFloor"];
            string height = Request.Form["height"];
            string color = Request.Form["color"];
            string fabrics = Request.Form["fabrics"].ToString();
            string fabricPlace = Request.Form["fabricPlace"];
            string length = Request.Form["length"];
            string silhouette = Request.Form["silhouette"];
            string frontNeck = Request.Form["frontNeck"];
            string backNeck = Request.Form["backNeck"];
            string sleeves = Request.Form["sleeves"];
            string extra = Request.Form["extra"].ToString();
            string asks = Request.Form["asks"];

            string sql = "insert into[CustomDress] (uName,measurementUnits,neck,bust,underBust,waist,hip,shoulders," +
                         "armLength,bicep,wrist,bustHeight,STWfront,bustSeparation,STWback,backWidth,hipHeight,waistToFloor," +
                         "neckToFloor,height,color,fabrics,fabricPlace,length,silhouette,frontNeck,backNeck,sleeves,extra,asks) values ('" +
                         uName + "','" + measurementUnits + "','" + neck + "','" + bust + "','" + underBust + "','" + waist + "','" + hip +
                         "','" + shoulders + "','" + armLength + "','" + bicep + "','"+wrist+"','"+bustHeight+"','"+STWfront+"','"+bustSeparation+"','"+STWback+
                         "','"+backWidth+"','"+hipHeight+"','"+waistToFloor+"','"+neckToFloor+"','"+height+"','"+color+"','"+fabrics+"','"+fabricPlace+
                         "','"+length+"','"+silhouette+"','"+frontNeck+"','"+backNeck+"','"+sleeves+"','"+extra+"','"+asks+"')";
                         MyAdoHelper.DoQuery("Database.mdf", sql);
        }
    }
}