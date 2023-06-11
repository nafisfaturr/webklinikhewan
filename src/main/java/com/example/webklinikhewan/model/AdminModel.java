package com.example.webklinikhewan.model;

public class AdminModel {
    private String id_admin;
    private String email;

    private String password;

    public AdminModel() {

    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setId_admin(String id_admin) {
        this.id_admin = id_admin;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public String getId_admin() {
        return id_admin;
    }

    public String getPassword() {
        return password;
    }
}
