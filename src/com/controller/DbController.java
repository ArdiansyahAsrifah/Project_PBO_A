package src.com.controller;
import src.com.config.DbConnect;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.Scanner;


public class DbController extends DbConnect {
    private static Connection connect;
    private static Statement statement;
    private static ResultSet resultset;

    // READ
    public static void getDatabase(){
        connection();
        try {

            statement = getConnection().createStatement();
            resultset = statement.executeQuery("SELECT * FROM absensi ");

            while(resultset.next()){
                System.out.println(
                    resultset.getString("ID") + " - "+
                    resultset.getString("NIM") + " - "+
                    resultset.getString("NAMA") + " - "+
                    resultset.getString("JURUSAN") + " - "+
                    resultset.getString("TANGGAL") + " - "+
                    resultset.getString("ABSENSI")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void insertData(){
        String nimbaru;
        String namabaru;
        String jurusanbaru;
        String tanggalbaru;
        String absensibaru;

        Scanner input = new Scanner(System.in);

        System.out.print("Nim  : ");
        nimbaru = input.nextLine();

        System.out.print("Nama : ");
        namabaru = input.nextLine();

        System.out.print("Jurusan : ");
        jurusanbaru = input.nextLine();

        System.out.print("Tanggal : ");
        tanggalbaru = input.nextLine();
        
        System.out.print("Absensi : ");
        absensibaru = input.nextLine();

        connection();
        try {

            statement = getConnection().createStatement();
            statement.executeUpdate("INSERT INTO `absensi` (`ID`, `NIM`, `NAMA`, `JURUSAN`, `TANGGAL`, `ABSENSI`) VALUES (NULL, '"+nimbaru+"', '"+namabaru+"', '"+jurusanbaru+"', '"+tanggalbaru+"', '"+absensibaru+"')");

            System.out.println("Data berhasil di simpan");

            statement.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void EditData(){
        int id;
        String absensiedit;

        Scanner input = new Scanner(System.in);

        System.out.print("Masukkan ID  : ");
        id = input.nextInt();
        input.nextLine();

        connection();
        try {

            statement = getConnection().createStatement();
            resultset = statement.executeQuery("SELECT * FROM absensi WHERE ID='"+id+"'");

            while(resultset.next()){
                System.out.println(
                    resultset.getString("ID") + " - "+
                    resultset.getString("NIM") + " - "+
                    resultset.getString("NAMA") + " - "+
                    resultset.getString("JURUSAN") + " - "+
                    resultset.getString("TANGGAL") + " - "+
                    resultset.getString("ABSENSI")
                );
                
            }
            System.out.print("Edit Absensi  : ");
            absensiedit = input.nextLine();

            try {
    
                statement = getConnection().createStatement();
                statement.executeUpdate("UPDATE `absensi` SET `ABSENSI` = '"+absensiedit+"' WHERE `absensi`.`ID` = '"+id+"';");
    
                System.out.println("Data berhasil di Update");
    
                statement.close();
                
            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        
       
    }

    public static void DeleteData(){
        int id;
        
        Scanner input = new Scanner(System.in);

        System.out.print("Masukkan ID  : ");
        id = input.nextInt();

        connection();
        try {

            statement = getConnection().createStatement();
            statement.executeUpdate("DELETE FROM `absensi` WHERE `absensi`.`ID` = '"+id+"';");

            System.out.println("Data berhasil di Hapus");

            statement.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}


