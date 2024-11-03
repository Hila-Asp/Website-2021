﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
 nav {
  float: left;
  width: 50%;
  background-color: #ffdfd6;
  padding:10px;
  height:580px;
 }

 article {
  float: left;
  width: 50%;
  background-color: #ffdfd6;
  padding:10px;
    height:580px;
}

 input[type=text], input[type=password], input[type=email], input[type=tel] {
  width: 98%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit], input[type=reset] {
  width: 97%;
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
input[type=checkbox], input[type=radio], input[type=color], select{
    float:left;
    margin:2px;
}

label{
    float:left;
}

div.reg {
  border-radius: 5px;
  width:30%;
  padding:10px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <p style="font-size:7px"><b><br /></b></p>
    <p style=" font-family:'Comic Sans MS'; font-size:35px; font-style:italic; text-align:center"><b>Register<br /></b></p>
    
    <center>
        <%=msg %>
    <div class="reg">
        <form  id="RegForm" name="RegForm" runat="server" method="post" action="" onsubmit="return checkForm()">
            <nav>
                <label for="email">Email</label>
                    <input type="email" id="mail" name="mail" placeholder="Email..." /><br />
                <label for="uName">Username</label>
                    <input type="text" id="uName" name="uName" placeholder="Username..."/>
                <label for="pass">Password</label>
                    <input type="password" id="pass" name="pass" placeholder="password.."/><br />
                <label for="cPass">Confirm Password</label>
                    <input type="password" id="cPass" name="cPass" placeholder="Confirm Password..."/><br />
                <label for="age">Age:</label><br />
                    <select id="age" name="age">
                        <option value="other">Choose Age</option>
                        <option value="0-8">0-8</option>
                        <option value="9-13">9-13</option>
                        <option value="14-17">14-17</option>
                        <option value="18-21">18-21</option>
                        <option value="22-30">22-30</option>
                        <option value="31-40">31-40</option>
                        <option value="41+">41+</option>
                    </select><br /><br />
                 <label for="favcolor">Favorite Color:</label><br />
                    <input type="color" id="favcolor" name="favcolor" value="#ff9999"/><br /><br />
                <label for="bodytype">Body Type:</label><br />
                    <input type="radio" id="average" name="bodytype" value="Average Body" />
                <label for="average">Average Body</label><br />
                    <input type="radio" id="plusSize" name="bodytype" value="Plus Size"/>
                <label for="plus size">Plus Size</label><br />
                    <input type="radio" id="petite" name="bodytype" value="Petite" />
                <label for="petite">Petite</label><br />
                    <input type="radio" id="tall" name="bodytype" value="Tall" />
                <label for="tall">Tall</label><br />
                <input type="submit" id="submit" name="submit" value="Submit" /> 
            </nav>
            <article>
                <label for="phone">Cellphone Number:</label>
                    <input type="tel" id="phone" name="phone"  placeholder="Number..."/><br />
                <label for="fname">First Name</label>
                    <input type="text" id="fName" name="fName" placeholder="First Name..."/><br />
                <label for="lname">Last Name</label>
                    <input type="text" id="lName" name="lName" placeholder="Last Name.."/>
                <label for="gender">Gender:</label><br /><br/>
                    <input type="radio" id="female" name="gender" value="Female"/>
                <label for="female">Female</label><br/>
                    <input type="radio" id="male" name="gender" value="Male"/>
                <label for="male">Male</label><br/>
                    <input type="radio" id="nonbinary" name="gender" value="Non-Binary"/>
                <label for="nonbinary">Non-Binary</label><br /><br />
                <label for="hobbies">Hobbies:</label><br/>
                    <input type="checkbox" id="sports" name="hobbies" value="sports"/>
                <label for="sports"> Sports</label><br/>
                    <input type="checkbox" id="acting" name="hobbies" value="acting"/>
                <label for="acting"> Acting</label><br/>
                    <input type="checkbox" id="music" name="hobbies" value="music"/>
                <label for="music"> Music</label><br/>
                    <input type="checkbox" id="reading" name="hobbies" value="reading"/>
                <label for="reading">Reading</label><br/>
                    <input type="checkbox" id="gaming" name="hobbies" value="gaming"/>
                <label for="gaming"> Gaming</label><br/>
                    <input type="checkbox" id="sewing" name="hobbies" value="Sewing"/>
                <label for="sewing"> Sewing</label><br/>
                    <input type="checkbox" id="knitting" name="hobbies" value="knitting"/>
                <label for="knitting"> Knitting</label><br/>
                    <input type="checkbox" id="Cooking/Baking" name="hobbies" value="Cooking/Baking"/>
                <label for="Cooking/Baking"> Cooking/Baking</label><br/>
                    <input type="checkbox" id="drawing/painting" name="hobbies" value="drawing/painting"/>
                <label for="drawing/painting"> Drawing/Painting</label><br/>
                <input type="reset" value="Reset"/>
            </article>
        </form>
    </div>

    </center>
    <p style="font-size:200px"><br /></p>
<script type="text/javascript">
    function checkForm()
    {
        var fName = document.getElementById("fName").value;
        if (isValidFname(fName) == false)
        {
            return false;
        }

        var lName = document.getElementById("lName").value;
        if (isValidlname(lName) == false)
        {
            return false;
        }

        var uName = document.getElementById("uName").value;
        if (isValidUname(uName) == false)
        {
            return false;
        }

        var pass = document.getElementById("pass").value;
        if (isValidPassword(pass) == false)
        {
            return false;
        }

        var cPass = document.getElementById("cPass").value;
        if (isValidCPass(cPass, pass) == false)
        {
            return false;
        }

        var mail = document.getElementById("mail").value;
        if (isValidEmail(mail) == false)
        {
            return false;
        }

        var phone = document.getElementById("phone").value;
        if (isValidPhone(phone) == false)
        {
            return false;
        }

        if (isValidGender() == false)
        {
            return false;
        }

        var age = document.getElementById("age").value;
        if (isValidAge(age) == false)
        {
            return false;
        }
        return true;
    }

    function isValidFname(fname)
    {
        if (fname == "")
        {
            window.alert("must fill first name.");
            return false;
        }
        if (fname.charAt(0) < 'A' || fname.charAt(0) > 'Z')
        {
            window.alert("must start with capital letter");
            return false;
        }
        for (var i = 1; i < fname.length; i++) {
            if (fname.charAt(i) < 'a' || fname.charAt(i) > 'z')
             {
                window.alert("first name must contain only lowercase letters");
                return false;
            }
        }
        return true;
    }

    function isValidlname(lname)
    {
        if (lname == "")
        {
            window.alert("must fill last name.");
            return false;
        }

        if (lname.charAt(0) < 'A' || lname.charAt(0) > 'Z')
        {
            window.alert("must start with capital letter");
            return false;
        }
        for (var i = 1; i < lname.length; i++)
        {
            if (lname.charAt(i) < 'a' || lname.charAt(i) > 'z')
            {
                window.alert("last name must contain only lowercase letters");
                return false;
            }
        }
        return true;
    }

    function isValidUname(uName)
    {
        if (uName == "")
        {
            window.alert("must enter username");
            return false;
        }
        if (uName.length < 4)
        {
            window.alert("username must be atleast 4 characters");
            return false;
        }
        for (var i = 0; i < uName.length; i++)
        {
            if (!((uName.charAt(i) >= 'a' && uName.charAt(i) <= 'z') || (uName.charAt(i) >= 'A' && uName.charAt(i) <= 'Z') || (uName.charAt(i) >= 0 && uName.charAt(i) <= 9)))
            {
                window.alert("username must contain only letters and numbers");
                return false;
            }
            if (uName.charAt(i) == " ") {
                window.alert("no spaces in username");
                return false;
            }
        }
        return true;
    }

    function isValidPassword(pass)
    {
        if (pass == "") {
            window.alert("must enter password");
            return false;
        }
        if (pass.length < 6) {
            window.alert("passwors must be atleast 6 characters");
            return false;
        }
        var flagCap = false;
        var flagLow = false;
        var flagNum = false;
        var flagChar = false;
        for (var i = 0; i < pass.length; i++)
        {
            if (pass.charAt(i) >= 'A' && pass.charAt(i) <= 'Z')
            {
                flagCap = true;
            }
            if (pass.charAt(i) >= 'a' && pass.charAt(i) <= 'z')
            {
                flagLow = true;
            }
            if (pass.charAt(i) >= 0 && pass.charAt(i) <= 9)
            {
                flagNum = true;
            }
            if (pass.charAt(i) == '!' || pass.charAt(i) == '@' || pass.charAt(i) == '#' || pass.charAt(i) == '$' || pass.charAt(i) == '%' || pass.charAt(i) == '^' || pass.charAt(i) == '&' || pass.charAt(i) == '*' || pass.charAt(i) == '(')
            {
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

     function isValidCPass(cPass,pass)
     {
         if (cPass == "")
         {
             window.alert("must enter confirm password");
             return false;
         }
         if (cPass != pass)
         {
             window.alert("password and confirm password must be the same");
             return false;
         }
         return true;
     }

     function isValidEmail(mail) {

         if (mail.indexOf("@") == -1) {
             window.alert("must enter @");
             return false;
         }

         if (mail.indexOf("@") != mail.lastIndexOf("@")) {
             window.alert("must enter only one @");
             return false;
         }

         if (mail.charAt(0) == "@")
         {
             window.alert("email must start with letter");
             return false;
         }

         if (!(mail.charAt(0) >= 'A' && mail.charAt(0) <= 'Z' || mail.charAt(0) >= 'a' && mail.charAt(0) <= 'z'))
         {
             window.alert("email must start with letter");
             return false;
         }


         if (mail.lastIndexOf("@") + 1 == mail.indexOf(".")) {
             window.alert("must have atleast one letter between the @ and a period")
         }

         if (mail.indexOf(".", mail.indexOf("@")) == -1) {
             window.alert("must have a period after the @");
             return false;
         }
         if (mail.indexOf(".", mail.indexOf("@")) == mail.length - 1) {
             window.alert(" a period can not be the last character in email");
             return false;
         }
         return true;
     }

     function isValidPhone(phone) {
         if (phone.length != 10)
         {
             window.alert("must have 10 digits");
             return false;
         }
         if (phone.charAt(0) != 0)
         {
             window.alert("number must start with 0");
             return false;
         }
         for (i = 1; i < phone.length; i++)
         {
             ch = phone.charAt(i);
             if (!(ch >= 0 && ch <= 9))
             {
                 window.alert("phone must be only numbers");
                 return false;
             }
         }
         return true;
     }

    function isValidGender()
    {
        if (document.getElementById("male").checked == false && document.getElementById("female").checked == false && document.getElementById("nonbinary").checked == false)
        {
            window.alert("must choose gender");
            return false;
        }
        return true;
    }

    function isValidAge(age)
    {
        if (age == "other")
        {
            window.alert("must choose age");
            return false;
        }
        return true;
    }

</script>
</asp:Content>

