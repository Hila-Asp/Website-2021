<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

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

div.change {
  border-radius: 5px;
  background-color: #ffdfd6;
  width:30%;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <p style="font-size:7px"><b><br /></b></p>
    <p style=" font-family:'Comic Sans MS'; font-size:35px; font-style:italic; text-align:center"><b>Change Password<br /></b></p>
      <p style="font-size:7px"><b><br /></b></p>
    <center>
             <%=msg %>
    <div class="change">
  <form id="form1" name="form1" runat="server" method="post" action="" onsubmit="return checkForm()">
    <label for="uName">Username</label>
      <input type="text" id="uName" name="uName" placeholder="Username..."/>
    <label for="pass">Old Password</label>
    <input type="password" id="pass" name="pass" placeholder="Password...">
    <label for="newPass">New Password</label>
    <input type="password" id="npass" name="npass" placeholder="Password...">
    <input type="submit" id="submit" name="submit" value="Change">
      </form>
</div></center>

    <p style=" font-family:'Comic Sans MS'; font-size:60px; font-style:italic"><b><br /></b></p>

    <script type="text/javascript">
        function checkForm() {
            var uName = document.getElementById("uName").value;
            if (isValidUname(uName) == false) {
                return false;
            }

            var pass = document.getElementById("pass").value;
            if (isValidPassword(pass) == false) {
                return false;
            }

            var nPass = document.getElementById("nPass").value;
            if (isValidNPass(nPass, pass) == false) {
                return false;
            }
            return true;
        }
        function isValidUname(uName) {
            if (uName == "") {
                window.alert("must enter username");
                return false;
            }
            return true;
        }

        function isValidPassword(pass) {
            if (pass == "") {
                window.alert("must enter password");
                return false;
            }
            return true;
        }

        function isValidNPass(nPass, pass) {
            if (nPass == "") {
                window.alert("must enter new password");
                return false;
            }
            if (nPass == pass) {
                window.alert("old and new password must be different");
                return false;
            }
            if (nPass.length < 6) {
                window.alert("passwors must be atleast 6 characters");
                return false;
            }
            var flagCap = false;
            var flagLow = false;
            var flagNum = false;
            var flagChar = false;
            for (var i = 0; i < nPass.length; i++) {
                if (nPass.charAt(i) >= 'A' && nPass.charAt(i) <= 'Z') {
                    flagCap = true;
                }
                if (nPass.charAt(i) >= 'a' && nPass.charAt(i) <= 'z') {
                    flagLow = true;
                }
                if (nPass.charAt(i) >= 0 && nPass.charAt(i) <= 9) {
                    flagNum = true;
                }
                if (nPass.charAt(i) == '!' || nPass.charAt(i) == '@' || nPass.charAt(i) == '#' || nPass.charAt(i) == '$' || nPass.charAt(i) == '%' || nPass.charAt(i) == '^' || nPass.charAt(i) == '&' || nPass.charAt(i) == '*' || nPass.charAt(i) == '(') {
                    flagChar = true;
                }
            }
            if (flagCap != true) {
                window.alert("password must contain at least one capital letter")
                return false;
            }
            if (flagLow != true) {
                window.alert("password must contain at least one lowercase letter")
                return false;
            }
            if (flagNum != true) {
                window.alert("password must contain at least one number")
                return false;
            }
            if (flagChar != true) {
                window.alert("password must contain at least one of the following: '!@#$%^&*()'")
                return false;
            }
            return true;
        }
    </script>

</asp:Content>

