<%@ page import="java.util.List" %>
<%@ page import="com.example.webklinikhewan.model.DokterModel" %>
<% List<DokterModel> allrecord = (List<DokterModel>) request.getAttribute("dokters"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinik Hewan Sekolah Vokasi</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>
    

<!-- header section starts  -->

<header>
    <a href="/home" class="logo"><img src="/review%20images/logo.png" alt="Logo Sekolah Vokasi IPB"></a>
  
    <nav class="navbar" id="navbar">
      <ul>
        <li><a href="/home">Home</a></li>
        <li><a href="#about">about</a></li>
        <li><a href="#kegiatan">Kegiatan</a></li>
        <li><a href="/galeri">Galeri</a></li>
        <li><a href="/artikel">Artikel</a></li>
        <li><a href="#location">lokasi</a></li>
        <li><a href="#contact">contact</a></li>
      </ul>
    </nav>
  
    <div class="fas fa-bars"></div>
  </header>
  

<!-- header section ends -->


<!-- home section starts  -->

<section class="home" id="home">

<div class="content"><br><br><br><br><br>
    <h1>Klinik Hewan Sekolah Vokasi IPB</h1>
    <p>Website resmi klinik hewan Sekolah Vokasi IPB</p>
</div>

<div class="box-container">
    <b>
    <div class="gallery">
        <a target="" href="/artikels?id=A001">
        <img src="/imgartikel/A001.jpg" alt="Artikel 1" width="600" height="400">
        </a>
        <div class="desc">Kenali Virus Panleukopenia</div>
    </div>
    
    <div class="gallery">
        <a target="" href="/artikels?id=A002">
        <img src="/imgartikel/A002.jpg" alt="Artikel 2" width="600" height="400">
        </a>
        <div class="desc">Helminthiasis</div>
    </div>
    
    <div class="gallery">
        <a target="" href="/artikels?id=A003">
        <img src="/imgartikel/A003.jpg" alt="Artikel 3" width="600" height="400">
        </a>
        <div class="desc">Kenali Penyakit Umum</div>
    </div>
    
    <div class="gallery">
        <a target="" href="/artikels?id=A004">
        <img src="/imgartikel/A004.jpg" alt="Artikel 4" width="600" height="400">
        </a>
        <div class="desc">Waspada Pada Kutu</div>
    </div>
    </b>
</div>

</section>

<!-- home section ends -->

<!-- about section starts  -->


<section class="about" id="about">

<h1 class="heading">about us</h1>
<h3 class="title">Klinik Hewan SV IPB</h3>
<br><br>


<div class="row">

    <div class="content">
        <br>
        <h3>klinik hewan sekolah vokasi IPB</h3>
        <p>Klinik Hewan Sekolah Vokasi IPB merupakan sebuah fasilitas yang dibangun pada tanggal 25 April 2014 dan didedikasikan untuk memberikan pengalaman praktik yang berharga bagi para mahasiswa program studi paramedik vateriner.</p>
        <a href="/artikels?id=KL01"><button>Baca</button></a>
    </div>

    <div class="image">
        <img src="/images/about.jpg" alt="">
    </div>

</div>

</section>


<!-- about section ends -->

<!-- dokter section starts  -->

<section id="dokter" class="dokter">

<h1 class="heading">Tim Dokter</h1>
<h3 class="title">Tim Dokter Klinik</h3>

<div class="card-container">
    <% for (int i = 0; i < allrecord.size(); i++) {%>
        <div class="card">
            <img src="<%= allrecord.get(i).getFoto_dokter()%>" alt="">
            <h3><%= allrecord.get(i).getNama_dokter()%></h3>
            <p><%= allrecord.get(i).getJabatan()%></p>
        </div>
    <%}%>
</div>


</section>

<!-- dokter section ends -->

<!-- course section starts  -->

<section id="kegiatan" class="kegiatan">

<h1 class="heading">Kegiatan</h1>
<h3 class="title" style="text-transform: none">Kegiatan yang Kami Lakukan di Klinik</h3>
<br><br><br>

<div class="kegiatan" align="center">

<a href="/galeris?id=Kegiatan"><img src="/images/kegi1.jpg" width="20%" alt="">
<img src="/images/kegi2.jpg" width="20%" alt="">
<img src="/images/kegi3.jpg" width="20%" alt="">
<img src="/images/kegi4.jpg" width="20%" alt="">
</a>

</div>

</section>

<!-- course section ends -->

<!-- review section starts  -->

<section id="location" class="review">

<h1 class="heading">Alamat Kami</h1>
<h3 class="title">Lokasi klinik</h3>

<div class="box-container">

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3963.470662736574!2d106.80468187485792!3d-6.588269593405358!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c571eb062793%3A0x8bada23b861b857c!2sKlinik%20Hewan%20Pendidikan%20Sekolah%20Vokasi%20IPB!5e0!3m2!1sid!2sid!4v1684874028529!5m2!1sid!2sid" width="80%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

</div>

</section>
<br><br><br>

<!-- review section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">

<h1 class="heading" align="center">contact us</h1>
<h3 class="title">Kalian bisa menghubungi kami di sini...</h3>
<div class="row">
    <b><a class="komen" type="button" href="https://wa.me/6281514394201?text=Selamat siang Dokter Henny Endah %0ASaya ingin berkonsultasi dengan dokter mengenai perihal hewan peliharaan saya, apakah Dokter bersedia?" target="_blank" >Hubungi Dokter</a></b>
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
