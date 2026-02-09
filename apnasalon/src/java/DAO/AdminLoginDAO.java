
package DAO;

import connection.createConnection;
import java.sql.*;

public class AdminLoginDAO {
    public boolean validate(String email, String password){
        boolean isValid = false;
        
        createConnection createCon = new createConnection();
        Connection conn = createCon.getCon();
        
        try{
            
            Statement stmt = null;
            stmt = conn.createStatement();
            
            ResultSet rs = stmt.executeQuery("select * from admin where email = '"+ email +"' AND password='"+ password +"'");
            
            if(!rs.next()){
                isValid = false;
            }else{
                isValid = true;
            }
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        
        return isValid;
    }
}
