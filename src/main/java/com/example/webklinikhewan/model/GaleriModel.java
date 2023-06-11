package com.example.webklinikhewan.model;

public class GaleriModel {
    private String kode_gambar;
    private String data_gambar;
    private String id_admin;
    private String kategori;

    public GaleriModel() {

    }

    public GaleriModel(String kode_gambar, String data_gambar, String id_gambar, String id_admin,
            String kategori) {
        this.kode_gambar = kode_gambar;
        this.data_gambar = data_gambar;
        this.id_admin = id_gambar;
        this.kategori = kategori;
    }

    public void setData_gambar(String data_gambar) {
        this.data_gambar = data_gambar;
    }

    public void setId_admin(String id_admin) {
        this.id_admin = id_admin;
    }

    public void setKategori(String kategori) {
        this.kategori = kategori;
    }

    public void setKode_gambar(String kode_gambar) {
        this.kode_gambar = kode_gambar;
    }

    public String getData_gambar() {
        return data_gambar;
    }

    public String getId_admin() {
        return id_admin;
    }

    public String getKategori() {
        return kategori;
    }

    public String getKode_gambar() {
        return kode_gambar;
    }
}
