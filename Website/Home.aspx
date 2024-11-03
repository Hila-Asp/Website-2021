<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

 nav {
    float: left;
    width: 62%;
    height: 800px; 
    background-color: #ffeddb;
    padding: 20px;
}

 article {
    float: left;
    padding: 20px;
    width: 38%;
    background-color: #ffdfd6;
    height: 800px;
}
 .container {
  position: relative;
  max-width: 400px;
  margin: 0 auto;
}

.container img {vertical-align: middle;}

.container .content {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <nav>
                <p style=" font-family:'Comic Sans MS'; font-size:34px; font-style:italic"><b><br /></b></p>
                <p style=" font-family:'Comic Sans MS'; font-size:34px; font-style:italic">Always Wanted A Couture Dress?</p>
                <p style="font-family:'Comic Sans MS'; font-size:34px; font-style:italic">Always Expensive? </p>
                <p style="font-family:'Comic Sans MS'; font-size:34px; font-style:italic"> Not Here!</p>
                <p style="font-family:'Comic Sans MS'; font-size:34px; font-style:italic">Here You Can Find High Quality Dresses in affordable prices</p>
         <p style="font-family:'Comic Sans MS'; font-size:34px; font-style:italic">Members Can Create A Custom Dress</p>
          </nav>
<article>
    <center>
        <img src="Images/home%20photo.jpg" style="text-align:center;height:700px;"  />
    </center>
</article>
    <table style="background-color:#ffdfd6; width:100%; line-height:100px; ">
        <tr>
        <th style="font-size:35px">Shop</th>
        </tr>
    </table>
<table style="width:100%; text-align:center">
    <tr> 
        <th style="width:50%">
            <div class="container">
                <img src="images/HomeDressLink.jpg" style="width:100%;"/>
                <div class="content">
                    <a href="Shop.aspx?Type=dresses"><h1>Dresses -></h1></a>
                </div>
            </div>
        </th>
        <th style="width:50%; text-align:center">
            <div class="container">
                <img src="images/HomeTwoPieceLink.jpg" style="width:100%;"/>
                <div class="content">
                    <a href="Shop.aspx?Type=twopieces"><h1>Two Pieces -></h1></a>
                </div>
            </div>
        </th>
    </tr>
</table>
</asp:Content>

