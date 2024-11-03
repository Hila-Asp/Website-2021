<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomDress.aspx.cs" Inherits="Customaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
nav {
  float: left;
  width: 25%;
  padding: 20px;
  height: 700px;
  background-color: #ffeddb;
  height:1498px;
}
article {
  float: left;
  padding: 20px;
  width: 75%;
  background-color: #ffeddb;
    height:1498px;
}
div.custom {
  border-radius: 5px;
  width:70%;
  padding:10px;
}
.navMes{
 float: left;
  width: 33%;
  background-color: #ffdfd6;
  padding:10px;
  height:530px;
}
.navCol{
     float: left;
  width: 50%;
  background-color: #ffdfd6;
  padding:10px;
  height:210px;
}
.navLen{
     float: left;
  width: 30%;
  background-color: #ffdfd6;
  padding:10px;
  height:100px;
}
.navSil{
  float: left;
  width: 14%;
  background-color: #ffdfd6;
  padding:10px;
  height:100px;
}
.navNeck{
    float: left;
  width: 33%;
  background-color: #ffdfd6;
  padding:10px;
  height:100px;
}
.navExtra{
  float: left;
  width: 50%;
  background-color: #ffdfd6;
  padding:10px;
  height:250px;
}
.navExtra input[type=text]{
  width: 98%;
  height:125px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=text] {
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

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p><br /></p>
<h1 style="text-align:center; font-size:40px">Custom Dress</h1>
<nav>
    <p><br /></p>
    <table>
        <tr> <td style="font-size:30px; text-align:left "><a href="#measurements">1. Measurements</a></td></tr>
        <tr> <td style="font-size:30px; text-align:left"><a href="#fabricsColors" >2.Fabrics & Color </a></td></tr>
        <tr> <td style="font-size:30px; text-align:left" ><a href="#silouetteLength"> 3.Silhouettes & Lengths </a></td></tr>
        <tr> <td style="font-size:30px; text-align:left"><a href="#necklinesSleeve">4.Front & Back Necklines & Sleeves</a> </td></tr>
        <tr> <td style="font-size:30px; text-align:left"><a href="#extras"> 5.Embellishments/Extras</a></td></tr>
    </table>
</nav>
<article>
    <div class="custom">
        <form id="measurementsForm" runat="server">
            <h2 id="measurements" style="text-align:center">Measurements- <a style=" font-size:20px" href="howToMeasure.aspx"  target="_blank"><u>how to measure</u></a><br /></h2>
            <div class="navMes">
                <label for="measurementUnits">Measurement Units</label><br />
                    <input type="radio" id="cm" name="measurementUnits" value="cm"/>cm<br />
                    <input type="radio" id="inch" name="measurementUnits" value="inch"/>Inch<br />
                <label for="neck">Neck</label>
                    <input type="text" id="neck" name="neck"/><br />
                <label for="bust">Bust</label>
                    <input type="text" id="bust" name="bust"/><br />
                <label for="underBust">Under Bust</label>
                    <input type="text" id="underBust" name="underBust" /><br />
                <label for="waist">Waist</label>
                    <input type="text" id="waist" name="waist" /><br />
                <label for="hip">Hip</label>
                    <input type="text" id="hip" name="hip"/><br />
                <label for="shoulder">Shoulders</label>
                    <input type="text" id="shoulders" name="shoulders"/>
            </div>
            <div class="navMes">
                <label for="armLength">Arm Length</label>
                    <input type="text" id="armLength" name="armLength"/><br />
                <label for="bicep">Bicep</label>
                    <input type="text" id="bicep" name="bicep"/><br />
                <label for="wrist">Wrist</label>
                    <input type="text" id="wrist" name="wrist"/><br />
                <label for="bustHeight">Bust Height</label>
                    <input type="text" id="bustHeight" name="bustHeight"/><br />
                <label for="STWfront">Shoulder To Waist (Front)</label>
                    <input type="text" id="STWfront" name="STWfront"/><br />
                <label for="bustSeparation">Bust separation</label>
                    <input type="text" id="bustSeparation" name="bustSeparation"/>
            </div>
            <div class="navMes">
                <label for="STWback">Shoulder To Waist (Back)</label>
                    <input type="text" id="STWback" name="STWback"/><br />
                <label for="backWidth">Back width</label>
                    <input type="text" id="backWidth" name="backWidth" /><br />
                <label for="hipHeight">Hip Height</label>
                    <input type="text" id="hipHeight" name="hipHeight"/><br />
                <label for="waistToFloor">Waist To Floor</label>
                    <input type="text" id="waistToFloor" name="waistToFloor"/><br />
                <label for="neckToFloor">Neck To Floor</label>
                    <input type="text" id="neckToFloor" name="neckToFloor"/><br />
                <label for="height">Height</label>
                    <input type="text" id="height" name="height"/>
            </div>
            <h4><br /></h4>
            <h2 id="fabricsColors" style="text-align:center">Fabrics & Colors</h2>
            <div class="navCol">
                <label for="color">Choose a color:</label><a href="colors.aspx"  target="_blank"><br /><u>color options</u></a><br />
                    <input type="text" id="color" name="color" /><br />
                <label for="place">If you chose multiple fabrics,<br />please state the placment of the fabrics:</label><br />
                    <input type="text" id="fabricPlace" name="fabricPlace" /><br />
            </div>
            <div class="navCol">
                <label for="fabrics">choose fabrics:</label><br />
                    <input type="checkbox" id="chiffon" name="fabrics" value="Chiffon"/>
                <label for="chiffon">Chiffon</label><br />
                    <input type="checkbox" id="jersey" name="fabrics" value="Jersey"/>
                <label for="jersey">Jersey</label><br />
                    <input type="checkbox" id="lace" name="fabrics" value="Lace"/>
                <label for="lace">Lace</label><br />
                    <input type="checkbox" id="satin" name="fabrics" value="Satin"/>
                <label for="satin">Satin</label><br />
                    <input type="checkbox" id="sequin" name="fabrics" value="Sequin"/>
                <label for="sequin">Sequin</label><br />
                    <input type="checkbox" id="tulle" name="fabrics" value="Tulle"/>
                <label for="tulle">Tulle</label><br />
                    <input type="checkbox" id="velvet" name="fabrics" value="Velvet"/>
                <label for="velvet">Velvet</label><br />
                    <input type="checkbox" id="silk" name="fabrics" value="Silk"/>
                <label for="silk">Silk</label><br /><br />
            </div>
            <h4><br /></h4>
            <h2 id="silouetteLength" style="text-align:center">Silhouettes & Length</h2>
            <div class="navLen">
                <a href="lengthsAndSilhouettes.aspx" target="_blank"><u>Lengths & Silhouettes options</u></a><br /><br />
                <b>Length</b><br />
                <select id="length" name="length">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                </select>
                </div>
                <div class="navSil">
                    <b>Silhouettes</b><br />
                    <input type="radio" id="aLine" name="silhouette"/>
                <label for="aLine">A-Line</label><br />
                <input type="radio" id="empire" name="silhouette"/>
                <label for="empire">Empire</label><br />
                <input type="radio" id="trumpet" name="silhouette"/>
                <label for="trumpet">Trumpet</label>
                </div>
                <div class="navLen">
                    <br />
                    <input type="radio" id="ballGown" name="silhouette"/>
                <label for="ballGown">Ball Gown</label><br />
                <input type="radio" id="sheath" name="silhouette"/>
                <label for="sheath">Sheath</label><br />
                <input type="radio" id="mermaid" name="silhouette"/>
                <label for="mermaid">Mermaid</label>
                </div>
            <div style="float: left;width: 26%;background-color: #ffdfd6;padding:10px;height:100px;"></div>
            <h4><br /></h4>
            <h2 id="necklinesSleeve" style="text-align:center">Necklines- <a href="Necklines.aspx" style=" font-size:20px" target="_blank"><u>Neckline options</u></a> & Sleeves- <a href="sleeves.aspx" style=" font-size:20px" target="_blank"><u>Sleeve options</u></a></h2>
            <div class="navNeck">
                <label for="frontNeck">Front Neckline</label>
                <input type="text" id="frontNeck" name="frontNeck" />
            </div>
            <div class="navNeck">
                <label for="backNeck">Back Neckline</label>
                <input type="text" id="backNeck" name="backNeck" />
            </div>
            <div class="navNeck">
                <label for="sleeves">Sleeves</label>
                <input type="text" id="sleeves" name="sleeves" />
            </div>
            <h4><br /></h4>
            <h2 id="extras" style="text-align:center">Embellishments/Extras</h2>  
            <div class="navExtra">
                <input type="checkbox" id="slit" name="extra" value="slit"/>
                <label for="slit">Slit</label><br />
                <input type="checkbox" id="buttons" name="extra" value="buttons" />
                <label for="buttons">Buttons</label><br />
                <input type="checkbox" id="bows" name="extra" value="bows" />
                <label for="bows">Bows</label><br />
                <input type="checkbox" id="flowers" name="extra" value="flowers"/>
                <label for="flowers">Flowers</label><br />
                <input type="checkbox" id="beads" name="extra" value="beads"/>
                <label for="beads">Beads</label><br />
                <input type="checkbox" id="feathers" name="extra" value="feathers"/>
                <label for="feathers">Feathers</label><br />
                <input type="checkbox" id="sequins" name="extra" value="sequins"/>
                <label for="sequins">Sequins</label><br />
                <input type="checkbox" id="tassels" name="extra" value="tassels"/>
                <label for="tassels">Tassles</label><br />
                <input type="checkbox" id="pearls" name="extra" value="pearls"/>
                <label for="pearls">Pearls</label><br />
                <input type="submit" id="submit" name="submit" value="Submit" > 
            </div>
            <div class="navExtra">
                please state the placment,color,and size of what you chose<br />or if you want to add a diffrent extra:
                <input type="text" id="asks" name="asks" />
                <input type="reset" value="Reset">
            </div>


</form> 
</div>
</article>


</asp:Content>
