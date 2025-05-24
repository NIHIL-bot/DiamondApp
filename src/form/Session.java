/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package form;

/**
 *
 * @author user
 */
public class Session {
    private static String username;
    private static String idKasir;
    private static String nama_kasir;

    public static void setUsername(String user) {
        username = user;
    }

    public static String getUsername() {
        return username;
    }

    public static void setIdKasir(String id) {
        idKasir = id;
    }

    public static String getIdKasir() {
        return idKasir;
    }

    public static void clearSession() {
        username = null;
        idKasir = null;
        nama_kasir = null;
    }
    
    public static void setNamaKasir(String nama) {
    nama_kasir = nama;
    }
    
    public static String getNamaKasir() {
    return nama_kasir;
    }
}
