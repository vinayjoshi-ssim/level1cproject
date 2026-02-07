
package connection;

import java.sql.*;

public class createConnection {
    
    static final String DB_URL = "jdbc:mysql://localhost:3306/apnasalon";
    static final String USER = "root";
    static final String PASS = "";
        
    public Connection getCon(){
        Connection conn = null; 
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");        
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e.getMessage());
        }
        
        return conn;
        
    }
}