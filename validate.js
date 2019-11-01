//alert("hello world");
window.onload = pageReady;
function pageReady() {
    var productImage = document.getElementById("product-picture");
    var image1 = document.getElementById("grey");
    var image2 = document.getElementById("black");
    var image3 = document.getElementById("red");
    var image4 = document.getElementById("blue");
    var image5 = document.getElementById("green");
    var image6 = document.getElementById("purple");
    var tshirtSize = document.getElementById("Tshirt_size");
    var tshirtStyle = document.getElementById("Tshirt_style");

    var Color = document.getElementById("color");
    var Size = document.getElementById("size");
    var Style = document.getElementById("style");

    image1.onclick = switchPic1;
    image2.onclick = switchPic2;
    image3.onclick = switchPic3;
    image4.onclick = switchPic4;
    image5.onclick = switchPic5;
    image6.onclick = switchPic6;
    tshirtSize.onchange = switchDesc1;
    tshirtStyle.onchange = switchDesc2;
    

    function switchPic1() {
        productImage.src = "images/tshirt-white.png";
        Color.innerHTML = "A white ";
    }
    
    function switchPic2() {
        productImage.src = "images/tshirt-black.png";
        Color.innerHTML = "A black ";
    }
    function switchPic3() {
        productImage.src = "images/tshirt-red.png";
        Color.innerHTML = "A red ";
    }
    function switchPic4() {
        productImage.src = "images/tshirt-blue.png";
        Color.innerHTML = "A blue ";
    }
    function switchPic5() {
        productImage.src = "images/tshirt-green.png";
        Color.innerHTML = "A green ";
    }
    function switchPic6() {
        productImage.src = "images/tshirt-purple.png";
        Color.innerHTML = "A purple ";
    }  

    function switchDesc1() {
        Size.innerHTML = tshirtSize.options[tshirtSize.selectedIndex].value;
    }
    function switchDesc2() {
        Style.innerHTML = tshirtStyle.options[tshirtStyle.selectedIndex].value + " Tshirt";
    }
} 