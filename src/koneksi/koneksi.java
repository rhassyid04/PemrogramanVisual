/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class koneksi {
    public static Object GetConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    private Connection koneksi;
    public Connection connect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Koneksi Berhasil");            
        }catch (ClassNotFoundException ex){
            System.out.println("Koneksi Gagal " +ex);
        }
        String url = "jdbc:mysql://localhost:3306/rhasyyid?zeroDateTimeBehavior=convertToNull";
        try {
            koneksi = DriverManager.getConnection(url,"root","");
            System.out.println("Koneksi Database Berhasil");
        }catch (SQLException ex){
            
        }
        return koneksi;
    } 
}
