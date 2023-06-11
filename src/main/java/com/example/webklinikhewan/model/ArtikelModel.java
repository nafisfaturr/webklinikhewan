package com.example.webklinikhewan.model;

import java.sql.Date;

public class ArtikelModel {
    private String id_artikel;
    private String judul_artikel;
    private String isi_artikel;
    private String penulis;
    private Date tgl_publikasi;
    private String gambar;
    private String id_admin;

    public ArtikelModel() {

    }

    public ArtikelModel(String id_artikel, String judul_artikel, String isi_artikel,
            String penulis, Date tgl_publikasi,
            String gambar, String id_admin) {
        this.id_artikel = id_artikel;
        this.judul_artikel = judul_artikel;
        this.isi_artikel = isi_artikel;
        this.penulis = penulis;
        this.tgl_publikasi = tgl_publikasi;
        this.gambar = gambar;
        this.id_admin = id_admin;
    }

    public void setGambar(String gambar) {
        this.gambar = gambar;
    }

    public void setId_admin(String id_admin) {
        this.id_admin = id_admin;
    }

    public void setId_artikel(String id_artikel) {
        this.id_artikel = id_artikel;
    }

    public void setIsi_artikel(String isi_artikel) {
        this.isi_artikel = isi_artikel;
    }

    public void setJudul_artikel(String judul_artikel) {
        this.judul_artikel = judul_artikel;
    }

    public void setPenulis(String penulis) {
        this.penulis = penulis;
    }

    public void setTgl_publikasi(Date tgl_publikasi) {
        this.tgl_publikasi = tgl_publikasi;
    }

    public String getGambar() {
        return gambar;
    }

    public String getId_admin() {
        return id_admin;
    }

    public Date getTgl_publikasi() {
        return tgl_publikasi;
    }

    public String getId_artikel() {
        return id_artikel;
    }

    public String getIsi_artikel() {
        return isi_artikel;
    }

    public String getJudul_artikel() {
        return judul_artikel;
    }

    public String getPenulis() {
        return penulis;
    }
}
