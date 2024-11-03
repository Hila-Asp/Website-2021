<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gold-sequin-plunging-v-neck-halter-dress.aspx.cs" Inherits="gold_plunging_neck_dress" %>

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
        <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/front.jpg" style="width:100%"/>
    </div>
    <div class="mySlides">
        <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/side.jpg" style="width:100%"/>
    </div>
    <div class="mySlides">
        <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/back.jpg" style="width:100%"/>
    </div>
    <a class="next" onclick="plusSlides(1)">❯</a>
</div>   
    


    <!-- Thumbnail images -->
<div class="column1">
    <div class="row">
        <img class="demo cursor" src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/front.jpg" style="width:100%" onclick="currentSlide(1)"/>
    </div>
    <div class="row">
        <img class="demo cursor" src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/side.jpg" style="width:100%" onclick="currentSlide(2)"/>
    </div>
    <div class="row">
        <img class="demo cursor" src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/back.jpg"style="width:100%" onclick="currentSlide(3)"/>
    </div>
 </div>
</nav>

<article>
<h2 style="text-align:center">Sparkly Gold Sequin Plunging V-neck Halter Dress</h2>
<h3 style="text-align:center">100$</h3>
<p>This sparkly gold sequin dress features a simple bodice with halter plunging V neckline, fited-and-flare mermaid long skirt.</p>


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
            <input type="radio" name="color" value="gold" checked>
            <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/dressColors/c39953.png" />
        </label>
        <label>
            <input type="radio" name="color" value="red">
            <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/dressColors/c94c4c.png" />
        </label>
        <label>
            <input type="radio" name="color" value="pink">
            <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/dressColors/eca1a6.png" />
        </label>
        <label>
            <input type="radio" name="color" value="purple">
            <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/dressColors/926aa6.png" />
        </label>
        <label>
            <input type="radio" name="color" value="blue">
            <img src="Images/dresses/gold-sequin-plunging-v-neck-halter-dress/dressColors/223a5e.png" />
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
                <td>mermaid</td>
            </tr>
            <tr>
                <th>Fabric</th>
                <td>sequin</td>
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
                <td>gold</td>
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
    slides[i].style.display = "none"; //styling the display of the slides
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
</script>
</asp:Content>


