
package student;

import connection.createConnection;
import java.sql.*;


public class insertStudentData {
    public int saveData(String name, String phone, String email){
        createConnection createCon = new createConnection();
        Connection conn = createCon.getCon();
        int affectedRows = 0;
        try {
            Statement stmt = null;
            stmt = conn.createStatement();
            
            affectedRows = stmt.executeUpdate("insert into student (`name`, `phone`, `email`) values('"+ name +"', '"+ phone +"','"+ email +"')");
        } catch (Exception e) {
        }
        
        return affectedRows;
    }
}
