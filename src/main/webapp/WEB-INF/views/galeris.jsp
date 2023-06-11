<%@ page import="java.util.List" %>
<%@ page import="com.example.webklinikhewan.model.GaleriModel" %>
<% List<GaleriModel> allrecord = (List<GaleriModel>) request.getAttribute("galeris"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Galeri</title>
    <link rel="stylesheet" href="/css/styletest.css">
    
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<header>

  <a href="/home" class="logo"><img src="/review images/logo.png" alt="Logo Sekolah Vokasi IPB"></a>

  <nav class="navbar">
    <ul>
      <li><a href="/galeri">Galeri</a></li>
    </ul>
  </nav>
</header>
<style>
      .image-container {
          margin: 5%;
          display: flex;
          flex-wrap: wrap;
          flex-direction: row;
          margin-top: 130px;
      }

      .image-container .image-row {
          width: 48%;
          margin: 1%;
      }

      .image-container img {
          width: 100%;
          height: auto;
          transition: transform 0.3s ease; /* Menambahkan transisi saat memperbesar gambar */
      }

      .image-container .image-card {
          background-color: white;
          display: flex;
          flex-wrap: wrap;
          flex-direction: row;
          border-radius: 5px;
          padding: 10px;
          box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
      }

      .image-container .image-card .zoom-image.zoomed {
          transform: scale(1.1); /* Memperbesar gambar ketika diclick */
          z-index: 999; /* Mengatur gambar agar tampil di depan */
          position: fixed; /* Mengatur posisi gambar menjadi tetap di tengah layar */
          width: 65%;
          top: 50%; /* Mengatur posisi vertikal ke 50% layar */
          left: 50%; /* Mengatur posisi horizontal ke 50% layar */
          transform: translate(-50%, -50%); /* Menggeser gambar ke tengah secara vertikal dan horizontal */
      }
</style>



<div class="image-container">
  <div class="image-card">
    <% for (int i = 0; i < allrecord.size(); i++) {%>
        <div class="image-row">
          <img src="<%= allrecord.get(i).getData_gambar()%>" alt="" class="zoom-image" onclick="toggleZoom(this)">
        </div>
    <%}%>
  </div>
</div>

<br><br><br>
<!-- contact section starts  -->
<section class="contact" id="contact">

<h1 class="heading" align="center">contact us</h1>
<h3 class="title">Kalian bisa menghubungi kami di sini...</h3>

<div class="row">
    <b><a class="komen" type="button" href="https://wa.me/6281514394201?text=Selamat siang Dokter Henny Endah %0ASaya ingin berkonsultasi dengan dokter mengenai perihal hewan peliharaan saya, apakah Dokter bersedia?" target="_blank">Hubungi Dokter</a></b>
    <b><a class="komen" type="button" href="https://forms.gle/798HfPZsVjUkMWWE7" target="_blank">Beri Ulasan</a></b>
</div>

</section>


<script lang="javascript">
  function toggleZoom(element) {
    const allImages = document.querySelectorAll('.zoom-image');
    allImages.forEach(image => {
      if (image !== element) {
        image.classList.remove('zoomed');
      }
    });
    element.classList.toggle('zoomed');
  }

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