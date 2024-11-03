using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //this has to be in every page that to the DB

public partial class Admin : System.Web.UI.Page
{
    public string tb;
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["admin"]!=null)
        {
            string sql = "select * from [info]";
            if (Request.Form["submit"] != null)
            {
            string field = Request.Form["field"]; //לפי מה חיפשו
            string value = Request.Form["value"]; // מה חיפשו
            if (field == "gender" || field == "age")
                sql = "SELECT * FROM [info] where (" + field + "='" + value + "');";
            else
                sql = "SELECT * FROM [info] WHERE (" + field + " LIKE '" + value + "%');";//'=יכיל
            }
            
            DataTable table = MyAdoHelper.ExecuteDataTable("DataBase.mdf", sql);
            int length = table.Rows.Count;
            if(length==0)
            {
                msg = "There are no people registered";
            }
            else
            {
                tb += "<tr>";
                tb += "<th class='tblTH' style='width:90px;'>First Name</th>";
                tb += "<th class='tblTH' style='width:90px;'>Last Name</th>";
                tb += "<th class='tblTH' style='width:100px;'>Username</th>";
                tb += "<th class='tblTH' style='width:160px;'>Email</th>";
                tb += "<th class='tblTH' style='width:110px;'>Phone Number</th>";
                tb += "<th class='tblTH' style='width:80px;'>Gender</th>";
                tb += "<th class='tblTH' style='width:50px;'>Age</th>";
                tb += "<th class='tblTH' style='width:110px;'>Body Type</th>";
                tb += "<th class='tblTH' style='width:300px;'>Hobbies</th>";
                tb += "<th class='tblTH' style='width:40px;'>Admin</th>";
                tb += "<th class='tblTH' style='width:50px;'>Delete</th>";
                tb += "<th class='tblTH' style='width:50px;'>Update</th>";
                tb += "</tr>";
                for(int i=0; i<length; i++)
                {
                    tb += "<tr>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["fName"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["lName"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["uName"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["mail"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["phone"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["gender"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["age"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["bodytype"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["hobbies"] + "</td>";
                    tb += "<td class='tblTD'>" + table.Rows[i]["admin"] + "</td>";
                    string userToDelete = table.Rows[i]["uName"].ToString();
                    tb+= "<td class='tblTD' ><a href='DeleteRecord.aspx?uName=" +userToDelete+ "' style='color:blue'>[delete]</a></td>";
                    string userToUpdate = table.Rows[i]["uName"].ToString();
                    tb += "<td class='tblTD' ><a href='UpdateUser.aspx?uName=" + userToUpdate + "' style='color:blue'>[update]</a></td>";
                    tb += "</tr>";
                }
                msg = length + " people are registered";
            }
        }
        else
            Response.Redirect("Home.aspx");
    }
}