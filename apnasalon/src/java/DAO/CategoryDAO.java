
package DAO;

import java.sql.*;
import DTO.ServiceCategoryDTO;
import connection.createConnection;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    public List<ServiceCategoryDTO> getAllCategory(){
        List<ServiceCategoryDTO> services = new ArrayList<ServiceCategoryDTO>();
    
        createConnection createConn =  new createConnection();
        Connection conn = createConn.getCon();
        
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs =  stmt.executeQuery("select * from ServiceCat");
            
            while(rs.next()){
                ServiceCategoryDTO dto = new ServiceCategoryDTO();
                dto.setId(rs.getInt("id"));
                dto.setName(rs.getString("name"));
                dto.setDescription(rs.getString("description"));
                dto.setImage(rs.getString("image"));
                dto.setCreated_at(rs.getString("created_at"));
                dto.setUpdated_at(rs.getString("updated_at"));
                
                
                services.add(dto);
            }
        
        } catch (Exception e) {
        }
        
        return services;
    }
}
