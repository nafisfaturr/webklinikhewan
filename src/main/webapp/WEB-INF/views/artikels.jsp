<%@ page import="com.example.webklinikhewan.model.ArtikelModel" %>
<% ArtikelModel allrecord = (ArtikelModel) request.getAttribute("artikels"); %>


<html lang="eng">
<head>
    <title>Artikel</title>
    <link rel="stylesheet" href="css/styletest.css">
</head>

<body>

<header>

    <a href="/home" class="logo"><img src="/review images/logo.png" alt="Logo Sekolah Vokasi IPB"></a>

    <nav class="navbar">
        <ul>
            <li><a href="/artikel">Artikel</a></li>
        </ul>
    </nav>
</header>

<style>
    .container{
        display: block;
        margin: auto;
        padding: 10px;
        margin: 10%;
    }

    .gmbrart1 {
        padding-bottom: 50px;
        float: left; /* Float the image to the left */
        /*margin-right: 10px; !*Add margin on the right side of the image *!*!*/
        /* margin-top: 5px; */
        width: 100%;
        height: auto;
    }

    .artikel1 {
        padding-left : 10%;
        
        padding-right : 10%;
        
        padding-bottom : 10%;
        font-family: 'Roboto', sans-serif;
        font-size: medium;
        overflow: hidden;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
    }

    .artikel1 a {
        font-size: 14px;
        text-decoration: none;
        color: dimgrey;
        font-family: 'Roboto', sans-serif;
        margin-top: 15px;
        margin-bottom: 40px;
    }

    .artikel1 p {
        text-align: justify;
    }

</style>

<div class="container">

    <div class="artikel1">
        <div class="gmbrart1" align="center">
        <h1><%= allrecord.getJudul_artikel()%></h1>
        <a><%= allrecord.getPenulis()%></a>
        <a><%= allrecord.getTgl_publikasi()%></a>
        <br><br><br>
            <img src="<%= allrecord.getGambar()%>" alt="">
        </div>
        
        <br><br>
        <div>
           <p> 
                <% 
                String isiArtikel = allrecord.getIsi_artikel();
                String[] paragraphs = isiArtikel.split("\n\n"); 
            
                for (String paragraph : paragraphs) { 
                String[] lines = paragraph.split("\n"); 
                
                for (String line : lines) { %>
                    <%= line %><br>
                <% } %>
                <br>
                <% } %>
            </p>
        </div>
    </div>
</div>


<script lang="javascript">
    var prevScrollpos = window.pageYOffset;
    window.onscroll = function() {
        var currentScrollPos = window.pageYOffset;
        if (prevScrollpos > currentScrollPos) {
            document.getElementById("navbar").style.top = "0";
        } else {
            document.getElementById("navbar").style.top = "-50px";
        }
        prevScrollpos = currentScrollPos;
    }
</script>

<!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- custom js file link  -->
<script src="/js/main.js"></script>

</body>
</html>