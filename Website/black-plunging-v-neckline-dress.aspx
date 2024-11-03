<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="black-plunging-v-neckline-dress.aspx.cs" Inherits="clothes_pages_black_plunging_v_neckline_dress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
nav {
  float: left;
  width: 50%;
  padding: 20px;
 padding-left:150px;
   background-color: #ffeddb;
      height:851px;
}
article {
  float: left;
  padding: 20px;
  padding-left:50px;
  width: 50%;
   background-color: #ffeddb;
   height:851px;
}

.column1 img {
  vertical-align: middle;
}
/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}
/* Hide the images by default */
.mySlides {
  display: none;
}
/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}
/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 55%;
  width: auto;
  padding: 16px;
  color: black;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}
.next{
    left:46%;
}
/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}                
/* thumnbail images */
.column1 {
  float: left;
  width: 25%;
}
/*main image*/
.column2 {
  float: right;
  width: 75%;
}
/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}
.active,
.demo:hover {
  opacity: 1;
}
[type=radio] {
  position: absolute;
  opacity: 0;
}
[type=radio]+img {
  cursor: pointer;
  margin-right: 0.5rem;
    height:25px;
    width:25px;
}
[type=radio]:checked + img {
  outline: 5px solid orange;
}
input[type=submit] {
  background-color: #ffcccc;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
    background-color: #ffb3b3;
}
.infoNav{
    float: left;
  width: 50%;
  padding: 20px;
   background-color: #ffeddb;
}
.infoNav table{
    width:300px;
    border:1px solid black;
}
.infoNav th{
    width:100px;
    border:1px solid black;
    text-align:left;
}
.infoNav td{
    border:1px solid black;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<nav>
<div class="column2">
    <a class="prev" onclick="plusSlides(-1)">❮</a>
    <div class="mySlides">
        <img src="Images/dresses/black-plunging-v-neckline-dress/front.jpg" style="width:100%"/>
    </div>
    <div class="mySlides">
        <img src="Images/dresses/black-plunging-v-neckline-dress/side.jpg" style="width:100%"/>
    </div>
    <div class="mySlides">
        <img src="Images/dresses/black-plunging-v-neckline-dress/back.jpg" style="width:100%"/>
    </div>
    <a class="next" onclick="plusSlides(1)">❯</a>
</div>   
    


    <!-- Thumbnail images -->
<div class="column1">
    <div class="row">
        <img class="demo cursor" src="Images/dresses/black-plunging-v-neckline-dress/front.jpg" style="width:100%" onclick="currentSlide(1)"/>
    </div>
    <div class="row">
        <img class="demo cursor" src="Images/dresses/black-plunging-v-neckline-dress/side.jpg" style="width:100%" onclick="currentSlide(2)"/>
    </div>
    <div class="row">
        <img class="demo cursor" src="Images/dresses/black-plunging-v-neckline-dress/back.jpg"style="width:100%" onclick="currentSlide(3)"/>
    </div>
 </div>
</nav>

<article>
<h2 style="text-align:center">Black Plunging V-Neckline Dress</h2>
<h3 style="text-align:center">100$</h3>
<p>Made in taffeta, this floor length A-line dress is soft and fashionable with plunging V neckline.<br />
   The open back of the bodice with spaghetti straps transitions into a less voluminous skirt.</p>


    <div class="infoNav">
    <a href="sizeChart.aspx" target="_blank"><u>Size Chart</u></a><br />
    <a href="howToMeasure.aspx" target="_blank"><u>How To Measure</u></a>


     <form  id="form1" name="form1" runat="server" method="post" action="">
         <p>choose size:</p>
         <select id="size" name="size">
             <option value="0">0</option>
             <option value="2">2</option>
             <option value="4">4</option>
             <option value="6">6</option>
             <option value="8">8</option>
             <option value="10">10</option>
             <option value="12">12</option>
             <option value="14">14</option>
             <option value="16">16</option>
             <option value="18">18</option>
         </select>
         <br />
         <p>Choose a color:</p>
        <label>
            <input type="radio" name="color" value="black" checked>
            <img src="Images/dresses/black-plunging-v-neckline-dress/dressColors/000000.png" />
        </label>
        <label>
            <input type="radio" name="color" value="purpleBrown">
            <img src="Images/dresses/black-plunging-v-neckline-dress/dressColors/563f46.png" />
        </label>
        <label>
            <input type="radio" name="color" value="blue">
            <img src="Images/dresses/black-plunging-v-neckline-dress/dressColors/3f4656.png" />
        </label>
        <label>
            <input type="radio" name="color" value="turquoise">
            <img src="Images/dresses/black-plunging-v-neckline-dress/dressColors/618685.png" />
        </label>
        <label>
            <input type="radio" name="color" value="red">
            <img src="Images/dresses/black-plunging-v-neckline-dress/dressColors/c94c4c.png" />
        </label><br />
         <input type="submit" id="addCart" name="addCart" value="Add To Cart" />
    </form>

    </div>
    <div class="infoNav">
        <p><br /></p>
        <table>
            <tr>
                <th>Type</th>
                <td>dresses</td>
            </tr>
            <tr>
                <th>Silhouette</th>
                <td>ball gown</td>
            </tr>
            <tr>
                <th>Fabric</th>
                <td>taffeta</td>
            </tr>
            <tr>
                <th>Length</th>
                <td>long</td>
            </tr>
            <tr>
                <th>Sleeve</th>
                <td>spaghetti strap</td>
            </tr>
            <tr>
                <th>Color</th>
                <td>black</td>
            </tr>
        </table>
    </div>
</article>


<script>
let slideIndex = 1; //fistslide=1
showSlides(slideIndex);
// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n); //n= how many slide moving
}
// Thumbnail image controls
function currentSlide(n) { //n= which slide is showing
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides"); //slides
  let dots = document.getElementsByClassName("demo");//thumbnail images css
  if (n > slides.length) {slideIndex = 1} //if the number of slide want to go is bigger than the number of slides that hace, go back ti slide 1
  if (n < 1) {slideIndex = slides.length}//if in first slide and in plusSlide(-1), the next slide will be the last slide
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none"; //מסתיר את כל התמונות 
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", ""); //מפעיל ללא פעיל
  }
  slides[slideIndex-1].style.display = "block"; //מציג רק תמונה אחת
  dots[slideIndex-1].className += " active"; //מפעיל רק תמונה אחת
}
</script>
</asp:Content>

