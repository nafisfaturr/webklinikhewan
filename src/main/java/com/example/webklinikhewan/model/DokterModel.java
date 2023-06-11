package com.example.webklinikhewan.model;

public class DokterModel {
    private Integer id_dokter;
    private String nama_dokter;
    private String foto_dokter;
    private String jabatan;
    private String id_admin;

    public DokterModel() {

    }

    public void setFoto_dokter(String foto_dokter) {
        this.foto_dokter = foto_dokter;
    }

    public void setId_admin(String id_admin) {
        this.id_admin = id_admin;
    }

    public void setId_dokter(Integer id_dokter) {
        this.id_dokter = id_dokter;
    }

    public void setJabatan(String jabatan) {
        this.jabatan = jabatan;
    }

    public void setNama_dokter(String nama_dokter) {
        this.nama_dokter = nama_dokter;
    }

    public String getFoto_dokter() {
        return foto_dokter;
    }

    public String getId_admin() {
        return id_admin;
    }

    public Integer getId_dokter() {
        return id_dokter;
    }

    public String getJabatan() {
        return jabatan;
    }

    public String getNama_dokter() {
        return nama_dokter;
    }

}
