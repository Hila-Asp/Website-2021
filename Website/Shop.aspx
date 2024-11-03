<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

  nav {
  float: left;
  width: 10.5%;
  padding: 20px;
  background-color: #ffeddb;
  height: 5300px;
}

article {
  float: left;
  padding: 20px;
  width: 89.5%;
  background-color: #ffeddb;
  height: 5300px;
}

        .tdElement{
    float:left;
    width:330px;
    font-size:20px;
    text-align:center;
    padding-right:15px;
    padding-left:15px;
}
 .tdElement img{
            width:297px;
            height:450px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <p style="font-size:7px"><b><br /></b></p>
    <p style=" font-family:'Comic Sans MS'; font-size:35px; font-style:italic; text-align:center"><b>Shop<br /></b></p>
      <p style="font-size:7px"><b><br /></b></p>
        <nav>
            <div id="filters">
            <form>
            <h2>Type:</h2>
            <div id="type">
            <input type="checkbox" id="dresses" value="dress"/>Dresses<br /><br />
            <input type="checkbox" id="twoPieces" value="two piece"/>Two Pieces<br /><br />
            </div>
            <h2>Silhouette:</h2>
            <div id="silhouette">
            <input type="checkbox" value="a-line"/>A-Line<br /><br />
            <input type="checkbox" value="ball gown"/>Ball Gown<br /><br />
            <input type="checkbox" value="mermaid"/>Mermaid<br /><br />
            <input type="checkbox" value="bodycon"/>Bodycon<br /><br />
            <input type="checkbox" value="sheath"/>Sheath<br /><br />
            </div>
            <h2>Sleeve:</h2>
            <div id="sleeve">
            <input type="checkbox" value="strapless"/>Strapless<br /><br />
            <input type="checkbox" value="spaghetti strap"/>Spaghetti strap<br /><br />
            <input type="checkbox" value="sleeveless"/>Sleeveless<br /><br />
            <input type="checkbox" value="short sleeve"/>Short Sleeve<br /><br />
            <input type="checkbox" value="long sleeve" />Long Sleeve<br /><br />
            </div>
            <h2>Length:</h2>
            <div id="length">
            <input type="checkbox" value="short"/>Short<br /><br />
            <input type="checkbox" value="long"/>Long<br /><br />
            <input type="checkbox" value="high low"/>High Low<br /><br />
            </div>
            <h2>Color:</h2>
            <div id="colors">
            <input type="checkbox" value="champagne"/>Champagne<br /><br />
            <input type="checkbox" value="gold"/>Gold<br /><br />
            <input type="checkbox" value="rose gold"/>Rose Gold<br /><br />
            <input type="checkbox" value="pink"/>Pink<br /><br />
            <input type="checkbox" value="yellow"/>Yellow<br /><br />
            <input type="checkbox" value="red"/>Red<br /><br />
            <input type="checkbox" value="blue"/>Blue<br /><br />
            <input type="checkbox" value="lavander"/>Lavander/Lilac<br /><br />
            <input type="checkbox" value="white"/>White<br /><br />
            <input type="checkbox" value="black"/>Black<br /><br />
            </div>
            </form>
            </div>
        </nav>
    <article>
            <div id="dress">
    </div>
    </article>

    <script>

        const filters = document.querySelector("#filters");//מחפש את פילטרס
        //when checkbox is checked an event is added(a filter) then it goes to the function with other checked checkboxes
        filters.addEventListener("input", filterdresses);//מוסיף לפילטרס אבנט
        //querySelectorAll() returns a static (not live) NodeList representing a list of the document's elements that match the specified group of selectors.
        //
        //The map() method creates a new array populated with the results of calling a provided function on every element in the calling array.
        function filterdresses() {//n= כל איבר במערך
            const checkedColors = [...filters.querySelectorAll("#colors input:checked")].map((n) => n.value), //example for map:(https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)
                  checkedType = [...filters.querySelectorAll("#type input:checked")].map((n) => n.value),
                  checkedSilhouette = [...filters.querySelectorAll("#silhouette input:checked")].map((n) => n.value),
                  checkedSleeve = [...filters.querySelectorAll("#sleeve input:checked")].map((n) => n.value),
                  checkedLength = [...filters.querySelectorAll("#length input:checked")].map((n) => n.value)
                drawItems(
                items.filter(                         //בודק אם במערך של הצ'ק יש את הצבע של השמלה הנוכחית
                    (n) => (!checkedColors.length || checkedColors.includes(n.Color))&&
                        //או לסיים לעבור את כל הצבעים 
                        (!checkedType.length || checkedType.includes(n.Type)) &&
                        (!checkedSilhouette.length || checkedSilhouette.includes(n.Silhouette)) &&
                        (!checkedSleeve.length || checkedSleeve.includes(n.Sleeve)) &&
                        (!checkedLength.length || checkedLength.includes(n.Length))
                )
            );
        }


        function drawItems(drs) {
            {
                document.getElementById("dress").innerHTML = drs
                    .map(
                        (n) => `
   <div class="single-dress">
        <div class="tdElement" > <a href="${n.Link}"> <img src="${n.Img}"  style="width:300px;height:450px;"/><br /><b>${n.Price}</b></a></div>

 </div>
  `
                    )
                    .join("");
            }
        }



        const items = [
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'long',
                Color: 'champagne',
                Length: 'long',
                Price: '200$',
                Img: "Images/dresses/champagne-long-sleeve-sequin-dress/front.jpg",
                Link: "champagne-long-sleeve-sequin-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'spaghetti strap',
                Color: 'rose gold',
                Length: 'long',
                Price: '175$',
                Img: "Images/dresses/rose-gold-sequin-backless-halter-v-neck-dress/front.jpg",
                Link:"rose-gold-sequin-backless-halter-v-neck-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'spaghetti strap',
                Color: 'champagne',
                Length: 'long',
                Price: '150$',
                Img: "Images/dresses/champagne-gold-sequin-v-neck-a-line-double-slit-dress/front.jpg",
                Link: "champagne-gold-sequin-v-neck-a-line-double-slit-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'rose gold',
                Length: 'high low',
                Price: '200$',
                Img: "Images/dresses/rose-gold-glitter-halter-high-low-dress/front.jpg",
                Link: "rose-gold-glitter-halter-high-low-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'sleeveless',
                Color: 'pink',
                Length: 'long',
                Price: '140$',
                Img: "Images/dresses/rose-gold-sequin-halter-neck-backless-mermaid-dress/front.jpg",
                Link: "rose-gold-sequin-halter-neck-backless-mermaid-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'champagne',
                Length: 'short',
                Price: '100$',
                Img: "Images/dresses/champagne-gold-sequin-backless-halter-short-dress/front.jpg",
                Link: "champagne-gold-sequin-backless-halter-short-dress.aspx"
            },
            {
                Type:'two piece',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'pink',
                Length: 'long',
                Price: '220$',
                Img: "Images/Two%20Piece/rhinestone-bodice-two-piece-dress/front.jpg",
                Link: "rhinestone-bodice-two-piece-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'sheath',
                Sleeve: 'sleeveless',
                Color: 'pink',
                Length: 'long',
                Price: '150$',
                Img: "Images/dresses/rose-gold-sequin-v-neck-slit-dress/front.jpg",
                Link: "rose-gold-sequin-v-neck-slit-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'gold',
                Length: 'long',
                Price: '240$',
                Img: "Images/dresses/gold-plunging-neck-dress/front.jpg",
                Link: "gold-plunging-neck-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'spaghetti strap',
                Color: 'gold',
                Length: 'long',
                Price: '350$',
                Img: "Images/dresses/gold-flower-corset-bodice-glitter-dress/front.jpg",
                Link: "gold-flower-corset-bodice-glitter-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'short sleeve',
                Color: 'champagne',
                Length: 'long',
                Price: '200$',
                Img: "Images/dresses/champagne-beaded-tulle-asymmetrical-dress/front.jpg",
                Link: "champagne-beaded-tulle-asymmetrical-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'spaghetti strap',
                Color: 'gold',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/gold-sequin-plunging-v-neck-halter-dress/front.jpg",
                Link: "gold-sequin-plunging-v-neck-halter-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'yellow',
                Length: 'long',
                Price: '170$',
                Img: "Images/dresses/yellow-lace-and-jersey-halter-slit-dress/front.jpg",
                Link: "yellow-lace-and-jersey-halter-slit-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'long sleeve',
                Color: 'yellow',
                Length: 'long',
                Price: '170$',
                Img: "Images/dresses/yellow-choker-off-the-shoulder-long-sleeve-dress/front.jpg",
                Link: "yellow-choker-off-the-shoulder-long-sleeve-dress.aspx"
            },
            {
                Type:'two piece',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'yellow',
                Length: 'long',
                Price: '100$',
                Img: "Images/Two%20Piece/yellow-halter-v-neck-two-piece-slit-dress/front.jpg",
                Link: "yellow-halter-v-neck-two-piece-slit-dress.aspx"
            },
            {
                Type:'two piece',
                Silhouette: 'a-line',
                Sleeve: 'spaghetti strap',
                Color: 'yellow',
                Length: 'long',
                Price: '100$',
                Img: "Images/Two%20Piece/yellow-satin-two-piece-dress/front.jpg",
                Link: "yellow-satin-two-piece-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'ball gown',
                Sleeve: 'sleeveless',
                Color: 'red',
                Length: 'long',
                Price: '200$',
                Img: "Images/dresses/burgundy-tulle-halter-plunging-neck-ball-gown/front.jpg",
                Link: "burgundy-tulle-halter-plunging-neck-ball-gown.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'bodycon',
                Sleeve: 'sleeveless',
                Color: 'red',
                Length: 'short',
                Price: '85$',
                Img: "Images/dresses/dark-red-off-the-shoulder-short-bodycon-dress/front.jpg",
                Link: "dark-red-off-the-shoulder-short-bodycon-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'strapless',
                Color: 'red',
                Length: 'long',
                Price: '170$',
                Img: "Images/dresses/dark-red-satin-strapless-slit-dress/front.jpg",
                Link: "dark-red-satin-strapless-slit-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'bodycon',
                Sleeve: 'long sleeve',
                Color: 'red',
                Length: 'short',
                Price: '170$',
                Img: "Images/dresses/red-sequin-long-sleeve-short-dress/front.jpg",
                Link: "red-sequin-long-sleeve-short-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'long sleeve',
                Color: 'blue',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/long-sleeve-v-neck-navy-velvet-high-slit-dress/front.jpg",
                Link: "long-sleeve-v-neck-navy-velvet-high-slit-dress.aspx"
            },
            {
                Type:'two piece',
                Silhouette: 'mermaid',
                Sleeve: 'sleeveless',
                Color: 'blue',
                Length: 'long',
                Price: '160$',
                Img: "Images/Two%20Piece/navy-blue-sequin-high-neck-two-piece-dress/front.jpg",
                Link: "navy-blue-sequin-high-neck-two-piece-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'spaghetti strap',
                Color: 'blue',
                Length: 'long',
                Price: '150$',
                Img: "Images/dresses/navy-blue-glitter-halter-strap-dress/front.jpg",
                Link: "navy-blue-glitter-halter-strap-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'ball gown',
                Sleeve: 'long sleeve',
                Color: 'blue',
                Length: 'long',
                Price: '320$',
                Img: "Images/dresses/navy-lace-long-sleeve-layered-dress/front.jpg",
                Link: "navy-lace-long-sleeve-layered-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'long sleeve',
                Color: 'blue',
                Length: 'long',
                Price: '190$',
                Img: "Images/dresses/royal-blue-bell-sleeve-trumpet-gown/front.jpg",
                Link: "royal-blue-bell-sleeve-trumpet-gown.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'long sleeve',
                Color: 'blue',
                Length: 'long',
                Price: '150$',
                Img: "Images/dresses/royal-blue-deep-v-neck-mermaid-long-dress/front.jpg",
                Link: "royal-blue-deep-v-neck-mermaid-long-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'sleeveless',
                Color: 'blue',
                Length: 'long',
                Price: '200$',
                Img: "Images/dresses/royal-blue-sequin-and-satin-halter-cowl-neck-dress/front.jpg",
                Link: "royal-blue-sequin-and-satin-halter-cowl-neck-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'blue',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/royal-blue-v-neck-slit-halter-dress/front.jpg",
                Link: "royal-blue-v-neck-slit-halter-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'sheath',
                Sleeve: 'long sleeve',
                Color: 'blue',
                Length: 'long',
                Price: '150$',
                Img: "Images/dresses/ice-blue-beaded-petals-tullet-dress/front.jpg",
                Link: "ice-blue-beaded-petals-tullet-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'sleeveless',
                Color: 'blue',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/ice-blue-plunging-neckline-high-slit-mermaid-dress/front.jpg",
                Link: "ice-blue-plunging-neckline-high-slit-mermaid-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'blue',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/sky-blue-tulle-plunging-neckline-dress/front.jpg",
                Link: "sky-blue-tulle-plunging-neckline-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'strapless',
                Color: 'blue',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/sky-blue-sweetheart-lace-chiffon-long-dress/front.jpg",
                Link: "sky-blue-sweetheart-lace-chiffon-long-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'ball gown',
                Sleeve: 'sleeveless',
                Color: 'lavander',
                Length: 'long',
                Price: '220$',
                Img: "Images/dresses/lavender-flounced-tulle-v-neck-dress/front.jpg",
                Link: "lavender-flounced-tulle-v-neck-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'spaghetti strap',
                Color: 'lavander',
                Length: 'long',
                Price: '200$',
                Img: "Images/dresses/lilac-sheer-floral-lace-and-tulle-dress/front.jpg",
                Link: "lilac-sheer-floral-lace-and-tulle-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'sleeveless',
                Color: 'lavander',
                Length: 'long',
                Price: '230$',
                Img: "Images/dresses/lilac-tulle-with-lace-v-neck-dress-1/front.jpg",
                Link: "lilac-tulle-with-lace-v-neck-dress-1.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'sleeveless',
                Color: 'lavander',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/lavender-plunging-v-neckline-mermaid-long-train-dress/front.jpg",
                Link: "lavender-plunging-v-neckline-mermaid-long-train-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'strapless',
                Color: 'white',
                Length: 'high low',
                Price: '85$',
                Img: "Images/dresses/ivory-strapless-short-high-low-dress/front.jpg",
                Link: "ivory-strapless-short-high-low-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'short sleeve',
                Color: 'white',
                Length: 'long',
                Price: '170$',
                Img: "Images/dresses/ivory-off-the-shoulder-longdress/front.jpg",
                Link: "ivory-off-the-shoulder-longdress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'spaghetti strap',
                Color: 'white',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/white-asymmetrical-ruched-slit-long-dress/front.jpg",
                Link: "white-asymmetrical-ruched-slit-long-dress.aspx"
            },
            {
                Type:'two piece',
                Silhouette: 'a-line',
                Sleeve: 'short sleeve',
                Color: 'white',
                Length: 'long',
                Price: '150$',
                Img: "Images/Two%20Piece/ivory-lace-tulle-two-piece-dress/front.jpg",
                Link: "ivory-lace-tulle-two-piece-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'ball gown',
                Sleeve: 'spaghetti strap',
                Color: 'black',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/black-plunging-v-neckline-dress/front.jpg",
                Link: "black-plunging-v-neckline-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'longsleeve',
                Color: 'black',
                Length: 'long',
                Price: '150$',
                Img: "Images/dresses/black-sequin-long-sleeve-high-neck-mermaid-dress/front.jpg",
                Link: "black-sequin-long-sleeve-high-neck-mermaid-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'mermaid',
                Sleeve: 'long sleeve',
                Color: 'black',
                Length: 'long',
                Price: '220$',
                Img: "Images/dresses/black-sequin-sleeved-v-neck-dress/front.jpg",
                Link: "black-sequin-sleeved-v-neck-dress.aspx"
            },
            {
                Type:'dress',
                Silhouette: 'a-line',
                Sleeve: 'spaghetti strap',
                Color: 'black',
                Length: 'long',
                Price: '100$',
                Img: "Images/dresses/black-strappy-back-simple-satin-dress/front.jpg",
                Link: "black-strappy-back-simple-satin-dress.aspx"
            }
        ];
        //אובייקט זה כמו קלאס
        const queryString = window.location.search; //מקבל את הטקסט של הפרמטר (כל מה שאחרי הסימן שאלה)
        const urlParams = new URLSearchParams(queryString);// בונה אובייקט של פרמטרים
        const itemType = urlParams.get('Type') //לוקח את הערך של המשתנה מהאובייקט
        if (itemType == "twopieces") {
            document.getElementById("twoPieces").checked = true;
        }
        if (itemType == "dresses") {
            document.getElementById("dresses").checked = true;
        }
            
        filterdresses();
    </script>

</asp:Content>

