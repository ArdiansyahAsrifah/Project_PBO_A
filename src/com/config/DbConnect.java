package src.com.config;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class DbConnect {


        private static final String DB_URL = "jdbc:mysql://localhost:3306/absen";
        private static final String DB_USER = "root";
        private static final String DB_PASS = "";
        
        private static Connection connect;
        private static Statement statement;
        private static ResultSet resultset;
    
        public static Connection getConnection() {
            return connect;
        }

        public static void connection(){
            try {
                connect = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
                
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Connection: Gagal");
            }
        }

        
    
}
