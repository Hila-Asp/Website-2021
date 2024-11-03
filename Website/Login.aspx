<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
input[type=text], input[type=password], input[type=email] {
  width: 98%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit], input[type=reset] {
  width: 100%;
  background-color: #ffcccc;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=submit]:hover,input[type=reset]:hover {
  background-color: #ffb3b3;
}

div.log {
  border-radius: 5px;
  background-color: #ffdfd6;
  width:30%;
}

a:link,a:visited  {
  text-decoration: none;
  color:black;
}

 a:hover, a:active {
    text-decoration: underline;
    color: black;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <p style="font-size:7px"><b><br /></b></p>
    <p style=" font-family:'Comic Sans MS'; font-size:35px; font-style:italic; text-align:center"><b>Login<br /></b></p>
      <p style="font-size:7px"><b><br /></b></p>
    <center>
        <%=msg %>
    <div class="log">
  <form  id="login" name="login" runat="server" method="post" action="" onsubmit="return checkForm()">
<label for="username">Username</label>
    <input type="text" id="uName" name="uName" placeholder="username...">
    <label for="pass">Password</label>
    <input type="password" id="pass" name="pass" placeholder="password..."><br />
      <a href="ChangePass.aspx">Change Password</a> 
    <input type="submit" id="submit" name="submit" value="Submit"> <input type="reset" value="Reset">
  </form>
</div></center>
    <p style=" font-family:'Comic Sans MS'; font-size:60px; font-style:italic"><b><br /></b></p>
<script type="text/javascript">
    function checkForm() {
        var uName = document.getElementById("uName").value;
        if (uName == "") {
            window.alert("must enter username");
            return false;
        }
        var pass = document.getElementById("pass").value;
        if (pass == "") {
            window.alert("must enter password");
            return false;
            }
        return true;
    }
</script>
</asp:Content>

