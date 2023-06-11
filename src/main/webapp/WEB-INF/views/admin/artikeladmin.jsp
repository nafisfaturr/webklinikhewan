<%@ page import="java.util.List" %>
<%@ page import="com.example.webklinikhewan.model.ArtikelModel" %>
<% List<ArtikelModel> allrecord = (List<ArtikelModel>) request.getAttribute("artikels"); %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <title>
    SV-Pet Clinic by Adiwarna.
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="../assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
</head>

<body class="g-sidenav-show  bg-gray-200">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3  bg-primary" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="#" target="#">
        <img src="logo.png" class="navbar-brand-img h-100" alt="main_logo"> <!-- Icon -->
        <span class="ms-1 font-weight-bold text-white">SV-Pet Clinic Admin</span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100" id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white " href="#">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">dashboard</i>
            </div>
            <span class="nav-link-text ms-1">Artikel</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="#">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">table_view</i>
            </div>
            <span class="nav-link-text ms-1">Gallery</span>
          </a>
        </li>
      </ul>
    </div>
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <!--<nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group input-group-outline">
              <label class="form-label">Type here...</label>
              <input type="text" class="form-control">
            </div>
          </div>
          
        </div>
      </div>
    </nav> -->
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <h4 class="mb-4">Artikel</h4>
      <div class="text-end me-5 mb-3">
        <a href="/admin/add">
          <button class="btn btn-warning">Tambah Artikel</button>
        </a>
      </div>
      <div class="tabel-responsive">
        <table class="table table-bordered" style="border: 1px solid black;">
          <tr>
            <th>Edit</th>
            <th>Photo</th>
            <th>Judul Artikel</th>
            <th>Penulis</th>
            <th>Tanggal Upload</th>
            <th>Isi Artikel</th>
          </tr>
          <% for(int i = 0; i < allrecord.size(); i++) { %>
          <tr>
            <td>
              <b>
                <a href="/admin/editartikel?id=<%= allrecord.get(i).getId_artikel() %>" style="color: #77D970;">Update</a><br>
                <a href="/admin/deleteartikel?id=<%= allrecord.get(i).getId_artikel() %>" onclick="confirm('Hapus?')" style="color: #FF1700;">Delete</a>
              </b>
            </td>
            <td><img src="<%= allrecord.get(i).getGambar() %>" style="width: 100px; height: 100px; object-fit: cover;"></td>
            <td><%= allrecord.get(i).getJudul_artikel() %></td>
            <td><%= allrecord.get(i).getPenulis() %></td>
            <td><%= allrecord.get(i).getTgl_publikasi() %></td>
            <td><%= allrecord.get(i).getIsi_artikel() %></td>
          </tr>
          <% } %>
          <tr class="last-row">
            <td colspan="6">- Artikel -</td>
          </tr>
        </table>
      </div>
      </div>      
  </main>
  

  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=3.0.0"></script>
</body>

</html>