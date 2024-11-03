<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .tblTH{
            text-align:center;
            border:1px solid black;
        }
        .tblTD{
            border:1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <center>
    <h1>Admin page</h1>
            <h6><br /></h6>
            <h3>Search:</h3>
            <form  id="show" name="show" runat="server" method="post" action="">
                <select name="field" id="field" onclick="detectField()">
                    <option value="fName">First Name</option>
                    <option value="lName">Last Name</option>
                    <option value="mail">Email</option>
                    <option value="phone">Phone</option>
                    <option value="gender">Gender</option>
                    <option value="age">Age</option>
                </select>
                <div id="query"></div>
                <input type="submit" id="submit" name="submit" value="Show" />
                </form>
    <h3> Users:</h3>

    <table style="border:1px solid black;">
        <%=tb %>
    </table>
      <br />
        <%=msg %>
       <br /><br />
        </center>
    <script>
        function detectField()
        {
            if (document.getElementById("field").value == "gender") {
                document.getElementById("query").innerHTML =
                    "<input type='radio' name='value' value='male' checked/>Male" +
                    "<input type='radio' name='value' value='female'/>Female";
            }
            else
            {
                if (document.getElementById("field").value == "age") {
                    var ageStr = "<select name='value'>"
                    ageStr += "<option value='0-8'>0-8</option>";
                    ageStr += "<option value='9-13'>9-13</option>";
                    ageStr += "<option value='14-17'>14-17</option>";
                    ageStr += "<option value='18-21'>18-21</option>";
                    ageStr += "<option value='22-30'>22-30</option>";
                    ageStr += "<option value='31-40'>31-40</option>";
                    ageStr += "<option value='41+'>41+</option>";
                    ageStr += "</select >";
                    document.getElementById("query").innerHTML = ageStr;

                }
                else
                {
                    document.getElementById("query").innerHTML = "starts with:<input type='text' name='value'/>";
                }
            }
        }

    </script>
</asp:Content>

