/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package form;
import javax.swing.*;

/**
 *
 * @author user
 */
public class MenuUtama extends JFrame {
    public MenuUtama() {
        setTitle("Menu Utama");
        setSize(400, 450);
        setLayout(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        JButton btnPelanggan = new JButton("Form Pelanggan");
        JButton btnKasir = new JButton("Form Kasir");
        JButton btnBarang = new JButton("Form Barang");
        JButton btnNota = new JButton("Form Nota");
        JButton btnLaporanPelanggan = new JButton("Laporan Data Pelanggan");

        btnPelanggan.setBounds(100, 60, 200, 40);
        btnKasir.setBounds(100, 120, 200, 40);
        btnBarang.setBounds(100, 180, 200, 40);
        btnNota.setBounds(100, 240, 200, 40);
        btnLaporanPelanggan.setBounds(100, 300, 200, 40);

        add(btnPelanggan);
        add(btnKasir);
        add(btnBarang);
        add(btnNota);
        add(btnLaporanPelanggan);

        // Event buka form
        btnPelanggan.addActionListener(e -> {
            new PelangganForm().setVisible(true);
        });

        btnKasir.addActionListener(e -> {
            new KasirForm().setVisible(true);
        });
        
        btnBarang.addActionListener(e -> {
            new BarangForm().setVisible(true);
        });
        
        btnNota.addActionListener(e -> {
            new FormNota().setVisible(true);
        }
        );
        
        btnLaporanPelanggan.addActionListener(e -> {
            new LaporanPelanggan().tampilkanLaporan();
        }
        );
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new MenuUtama().setVisible(true));
    }

}
