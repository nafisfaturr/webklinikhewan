<%@ page import="java.util.List" %>
<%@ page import="com.example.webklinikhewan.model.GaleriModel" %>
<% List<GaleriModel> allrecord = (List<GaleriModel>) request.getAttribute("galeris"); %>


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
      min-height: 62vh;
      background-image: url("/imgkegiatan/kegi9.jpg");
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

    .galeri{
      background:#f9f9f9;
    }
    .galeri .content{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-flow: column;
    padding-top: 14rem;
    padding-bottom: 8rem;
    text-align: center;
    }

    .galeri .content h1{
      font-size: 5rem;
      color: #fff;
      padding:0 1rem;
      text-shadow: 0 .3rem .5rem rgba(0,0,0,.3);
      text-transform: uppercase;
    }

    .galeri .content p{
      font-size: 2rem;
      color:#eee;
      padding:1rem 25rem;
    }

    .galeri .card-container{
      display: flex;
      align-items: center;
      justify-content: center;
      flex-wrap: wrap;
      padding:2rem 0;
    }


    .galeri .card-container .card{
      padding:2rem;
      margin-top: 2rem;
      margin-right: 4rem;
      margin-left: 4rem;
      margin-bottom: 2rem;
      background:#fff;
      text-align: center;
      width:50rem;
      box-shadow: 0 .3rem .5rem rgba(0,0,0,.3);
    }

    .galeri .card-container .card a{
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .galeri .card-container .card a:hover p.clickme{
      opacity: 1 !important;
      transform: scale(1);
    }

    .galeri .card-container .card p.clickme{
      position: absolute;
      color: #fff;
      text-transform: uppercase;
      font-weight: bold;
      opacity: 0;
      transform: scale(1.2);
      transition: .3s;
    }

    .galeri .card-container .card img{
      display: block;
      height:30rem;
      width:100%;
      object-fit: cover;
      /*filter: grayscale();*/
      transition: .2s;
    }

    .galeri .card-container .card img:hover {
      filter: brightness(70%);
      background-color: #333;
    }

    .galeri .card-container .card h3{
      color:var(--pink);
      font-size: 2rem;
      padding:.5rem 0;
    }

    .galeri .card-container .card p {
      font-size: 1.7rem;
      color: #666;
    }
  
  </style>

</head>
<body>

<!-- header section starts  -->

<header>

  <a href="/home" class="logo"><img src="/review%20images/logo.png" alt="Logo Sekolah Vokasi IPB"></a>

  <nav class="navbar">
    <ul>
      <li><a href="/galeri">Galeri</a></li>
    </ul>
  </nav>

  <div class="fas fa-bars"></div>

</header>

<section class="judul" id="judul">

  <div class="konten"><br><br><br><br><br>
    <h1>Galeri</h1>
  </div>


</section>
<!-- review section ends -->
<br><br><br>

<!--section card galeri-->
<section id="galeri" class="galeri">
  
<h1 class="heading">Kategori</h1>
<h3 class="title">Pilih Kategori :</h3>
  
  <div class="card-container">

    <div class="card">
      <a href="/galeris?id=Kegiatan">
        <img href="/" src="/imgkegiatan/kegi7.jpg" alt="">
        <p class="clickme">click me</p>
      </a>
      <h3>Kegiatan</h3>
      <p>Kegiatan</p>
    </div>

    <div class="card">
      <a href="/galeris?id=Fasilitas">
        <img src="/imgfasilitas/fasil7.jpg" alt="">
        <p class="clickme">click me</p>
      </a>
      <h3>Fasilitas</h3>
      <p>Fasilitas</p>
    </div>
  </div>

</section>

<br><br><br>
<!-- contact section starts  -->
<section class="contact" id="contact">

  <h1 class="heading" align="center">contact us</h1>
  <h3 class="title">Kalian bisa menghubungi kami di sini...</h3>

  <div class="row">
    <b><a class="komen" type="button" href="https://wa.me/6281514394201?text=Selamat siang kegiatan Henny Endah %0ASaya ingin berkonsultasi dengan kegiatan mengenai perihal hewan peliharaan saya, apakah kegiatan bersedia?" target="_blank">Hubungi kegiatan</a></b>
    <b><a class="komen" type="button" href="https://forms.gle/798HfPZsVjUkMWWE7" target="_blank">Beri Ulasan</a></b>
  </div>


  <!--<div class="row">-->

  <!--<div class="form-container" align="center">-->
  <!--        <form action="" >-->
  <!--            <input type="text" name="name" placeholder="full name">-->
  <!--            <input type="email" name="email" placeholder="enter your email">-->
  <!--            <input type="number" name="phone" placeholder="phone">-->
  <!--            <textarea name="message" id="" cols="30" rows="10" placeholder="message"></textarea>-->
  <!--            <button class="komen" type="submit">Submit</button>-->
  <!--        </form>-->
  <!--    </div>-->

  <!--</div>-->

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