<%@ page import="java.util.List" %>
<%@ page import="com.example.webklinikhewan.model.ArtikelModel" %>
<% List<ArtikelModel> allrecord = (List<ArtikelModel>) request.getAttribute("artikels"); %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinik Hewan Sekolah Vokasi</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <style>
        .judul{
            opacity: 80%;
            min-height: 65vh;
            background-image: url("/images/bg_berita.jpg");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            z-index: 0;
            overflow:hidden;
            position: relative;
        }

        .judul .konten{
            display: flex;
            align-items: center;
            justify-content: center;
            flex-flow: column;
            padding-top: 14rem;
            padding-bottom: 8rem;
            text-align: center;
        }
        .judul .konten h1{
            font-size: 5rem;
            color: #fff;
            padding:0 1rem;
            text-shadow: 0 .3rem .5rem rgba(0,0,0,.3);
            text-transform: uppercase;
        }

        .judul .konten p{
            font-size: 2rem;
            color:#eee;
            padding:1rem 25rem;
        }
        .news{
            margin: 20px 100px 20px 100px;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            gap: 20px;
        }

        article img{
            width: 100%;
            height: 200px;
            display: block;
            object-fit: cover;
        }

        article a{
            text-decoration: underline;
        }
        .news a {
            font-size: 14px;
            text-decoration: none;
            color: #FF046F;
            font-family: 'Roboto', sans-serif;
            margin-top: 10px;
            transition: .3s;
        }
        .news a:hover {
            color: #C63BFA;
        }
        .news h1 {
            margin-top: 20px;
            font-size: 16px;
        }
    </style>

</head>
<body>

<!-- header section starts  -->
<header>

<a href="/home" class="logo"><img src="/review%20images/logo.png" alt="Logo Sekolah Vokasi IPB"></a>

<nav class="navbar">
    <ul>
        <li><a href="/artikel">Artikel</a></li>
    </ul>
</nav>

<div class="fas fa-bars"></div>

</header>

<section class="judul" id="judul">

<div class="konten"><br><br><br><br><br>
    <h1>Kumpulan Artikel</h1>
    <p>Mengenal Hewan Peliharaan Anda Lebih Dekat</p>
</div>


</section>
<!-- review section ends -->
<br><br><br>

<!--section artikel-->
<section class="news" id="news">
    <% for (int i = 0; i < allrecord.size(); i++) {%>
    <article>
        <img src="<%= allrecord.get(i).getGambar()%>" alt="">
        <h1><%= allrecord.get(i).getJudul_artikel()%></h1>
        <a href="/artikels?id=<%= allrecord.get(i).getId_artikel()%>">Baca Selengkapnya</a>
    </article>
    <%}%>
</section>

<br><br><br>
<!-- contact section starts  -->
<section class="contact" id="contact">

<h1 class="heading" align="center">contact us</h1>
<h3 class="title">we love conversatios, lets talk.</h3>

<div class="row">
    <b><a class="komen" type="button" href="https://wa.me/6281514394201?text=Selamat siang Dokter Henny Endah %0ASaya ingin berkonsultasi dengan dokter mengenai perihal hewan peliharaan saya, apakah Dokter bersedia?" target="_blank">Hubungi Dokter</a></b>
    <b><a class="komen" type="button" href="https://forms.gle/798HfPZsVjUkMWWE7" target="_blank">Beri Ulasan</a></b>
</div>

</section>


<!-- contact section ends -->

<section class="footer">

<!--
<div class="icons">
    <a href="#" class="fab fa-facebook-f"></a>
    <a href="#" class="fab fa-twitter"></a>
    <a href="#" class="fab fa-instagram"></a>
    <a href="#" class="fab fa-github"></a>
    <a href="#" class="fab fa-pinterest"></a>
</div>
!-->

<div class="credit">created by <span>Adiwarna</span> | all rights reserved.</div>

</section>

<!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- custom js file link  -->
<script src="/js/main.js"></script>

    
</body>
</html>