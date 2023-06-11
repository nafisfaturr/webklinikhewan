package com.example.webklinikhewan.controller;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.webklinikhewan.model.ArtikelModel;
import com.example.webklinikhewan.model.DokterModel;
import com.example.webklinikhewan.model.GaleriModel;

@Controller
public class HomeController {
    private String sql;

    @RequestMapping("/home")
    public String home(Model model) {
        try {
            Class.forName("org.postgresql.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klinikhewan",
                    "postgres", "asiap");

            Statement stmnt = conn.createStatement();

            sql = "SELECT * FROM dokter";

            ResultSet rs = stmnt.executeQuery(sql);

            List<DokterModel> data = new LinkedList<>();

            while (rs.next()) {
                DokterModel dokters = new DokterModel();

                dokters.setId_dokter(rs.getInt("id_dokter"));
                dokters.setNama_dokter(rs.getString("nama_dokter"));
                dokters.setFoto_dokter(rs.getString("foto_dokter"));
                dokters.setJabatan(rs.getString("jabatan"));
                dokters.setId_admin(rs.getString("id_admin"));

                data.add(dokters);
            }
            model.addAttribute("dokters", data);

        } catch (Exception e) {

        }

        return "index";
    }

    @RequestMapping("/artikel")
    public String artikel(Model model) {
        try {
            Class.forName("org.postgresql.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klinikhewan",
                    "postgres", "asiap");

            Statement stmnt = conn.createStatement();

            sql = "SELECT * FROM artikel";

            ResultSet rs = stmnt.executeQuery(sql);

            List<ArtikelModel> data = new LinkedList<>();

            while (rs.next()) {
                ArtikelModel artikels = new ArtikelModel();

                artikels.setId_artikel(rs.getString("id_artikel"));
                artikels.setJudul_artikel(rs.getString("judul_artikel"));
                artikels.setIsi_artikel(rs.getString("isi_artikel"));
                artikels.setPenulis(rs.getString("penulis"));
                artikels.setTgl_publikasi(rs.getDate("tgl_publikasi"));
                artikels.setGambar(rs.getString("gambar"));
                artikels.setId_admin(rs.getString("id_admin"));

                data.add(artikels);
            }
            model.addAttribute("artikels", data);

        } catch (Exception e) {

        }

        return "artikel";
    }

    @RequestMapping("/artikels")
    public String artikels(Model model, @RequestParam String id) {
        try {
            Class.forName("org.postgresql.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klinikhewan",
                    "postgres", "asiap");

            Statement stmnt = conn.createStatement();

            sql = "SELECT * FROM artikel WHERE id_artikel ='" + id + "'";

            ResultSet rs = stmnt.executeQuery(sql);

            rs.next();

            ArtikelModel artikels = new ArtikelModel(rs.getString("id_artikel"), rs.getString("judul_artikel"),
                    rs.getString("isi_artikel"), rs.getString("penulis"), rs.getDate("tgl_publikasi"),
                    rs.getString("gambar"), rs.getString("id_admin"));

            model.addAttribute("artikels", artikels);

        } catch (Exception e) {

        }

        return "artikels";
    }

    @RequestMapping("/galeri")
    public String galeri(Model model) {
        return "galeri";
    }

    @RequestMapping("/galeris")
    public String galeris(Model model, @RequestParam String id) {
        try {
            Class.forName("org.postgresql.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klinikhewan",
                    "postgres", "asiap");

            Statement stmnt = conn.createStatement();

            sql = "SELECT * FROM galeri WHERE kategori ='" + id + "'";

            ResultSet rs = stmnt.executeQuery(sql);

            List<GaleriModel> data = new LinkedList<>();

            while (rs.next()) {
                GaleriModel galeris = new GaleriModel();

                galeris.setKode_gambar(rs.getString("kode_gambar"));
                galeris.setData_gambar(rs.getString("data_gambar"));
                galeris.setId_admin(rs.getString("id_admin"));
                galeris.setKategori(rs.getString("kategori"));

                data.add(galeris);
            }
            model.addAttribute("galeris", data);

        } catch (Exception e) {

        }
        return "galeris";
    }

}
