package com.example.webklinikhewan.controller;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.webklinikhewan.model.ArtikelModel;

@Controller
public class AdminController {
    private String sql;

    @RequestMapping({ "/admin", "/admin/artikel" })
    public String admin(Model model) {
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
        return "/admin/artikeladmin";
    }

    @RequestMapping("/admin/add")
    public String AdminAdd(Model model) {
        return "/admin/form";
    }

    @RequestMapping("/admin/saveArtikel")
    public String SaveArikel(Model model, ArtikelModel artikels, @RequestParam String id_artikel,
            @RequestParam String judul_artikel, @RequestParam String isi_artikel, @RequestParam String penulis,
            @RequestParam Date tgl_publikasi, @RequestParam String gambar, @RequestParam String id_admin) {
        try {
            Class.forName("org.postgresql.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klinikhewan",
                    "postgres", "asiap");

            Statement stmnt = conn.createStatement();

            sql = "INSERT INTO artikel VALUES ('"
                    + id_artikel + "', '" + judul_artikel + "', '" + isi_artikel + "', '"
                    + penulis + "', '" + tgl_publikasi + "', '" + gambar + "', '" + id_admin + "')";

            stmnt.execute(sql);

        } catch (Exception e) {

        }

        return "redirect:/admin";
    }

    @RequestMapping("/admin/editartikel")
    public String EditMenu(@RequestParam String id, Model model) {

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

        return "/admin/formupdate";
    }

    @RequestMapping("/admin/updateArtikel")
    public String updateMenu(Model model, ArtikelModel artikels, @RequestParam String id_artikel,
            @RequestParam String judul_artikel, @RequestParam String isi_artikel, @RequestParam String penulis,
            @RequestParam Date tgl_publikasi, @RequestParam String gambar, @RequestParam String id_admin) {
        try {
            Class.forName("org.postgresql.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klinikhewan",
                    "postgres", "asiap");

            Statement stmnt = conn.createStatement();

            String sql = "UPDATE artikel SET judul_artikel = '" + judul_artikel + "', isi_artikel ='"
                    + isi_artikel
                    + "', penulis = '"
                    + penulis + "', tgl_publikasi ='" + tgl_publikasi + "', gambar ='" + gambar + "', id_admin ='"
                    + id_admin + "' WHERE id_artikel = '" + id_artikel + "'";

            stmnt.executeUpdate(sql);
            conn.close();
        } catch (Exception e) {
            // Handle exception
            e.printStackTrace();
        }

        return "redirect:/admin";
    }

    @GetMapping("/admin/deleteartikel")
    public String deleteArtikel(@RequestParam String id, Model model) {
        try {
            Class.forName("org.postgresql.Driver");
            java.sql.Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klinikhewan",
                    "postgres", "asiap");

            Statement stmnt = conn.createStatement();

            sql = "DELETE FROM artikel WHERE id_artikel ='" + id + "'";

            stmnt.executeUpdate(sql);

            conn.close();
        } catch (Exception e) {
            // Handle exception
            e.printStackTrace();
        }

        return "redirect:/admin";
    }

}
