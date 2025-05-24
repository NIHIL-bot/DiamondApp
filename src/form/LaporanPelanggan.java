/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package form;
import java.sql.Connection;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.view.JasperViewer;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 *
 * @author user
 */
public class LaporanPelanggan {
    public void tampilkanLaporan() {
        try {
        // Misal file laporan di folder src/laporan
        JasperReport report = (JasperReport) JRLoader.loadObjectFromFile("src/report/LaporanDataPelanggan.jasper");
        Connection conn = koneksi.Koneksi.getKoneksi(); // koneksi ke DB
        JasperPrint print = JasperFillManager.fillReport(report, null, conn);
        if (print.getPages().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Data laporan kosong.");
        } else {
            JasperViewer.viewReport(print, false);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    }
}
