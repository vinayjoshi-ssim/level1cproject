
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
    
    public ServiceCategoryDTO getSingleCategory(String id){
        ServiceCategoryDTO dto = new ServiceCategoryDTO();
        
        createConnection createConn =  new createConnection();
        Connection conn = createConn.getCon();
        
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs =  stmt.executeQuery("select * from ServiceCat where id=" + id);
            
            if(rs.next()){
                
                dto.setId(rs.getInt("id"));
                dto.setName(rs.getString("name"));
                dto.setDescription(rs.getString("description"));
                dto.setImage(rs.getString("image"));
                dto.setCreated_at(rs.getString("created_at"));
                dto.setUpdated_at(rs.getString("updated_at"));
                
            }
        
        } catch (Exception e) {
        }
        
        return dto;
    }
    
    public boolean deleteCategory(String id){
        boolean isDeleted = false;
        
        createConnection createConn =  new createConnection();
        Connection conn = createConn.getCon();
        
        try {
            Statement stmt = conn.createStatement();
            int affectedRows = stmt.executeUpdate("delete from serviceCat where id = "+id+"");
            
            if(affectedRows > 0){
                isDeleted = true;
            }
        } catch (Exception e) {
        }
        
        return isDeleted;
    }
    
    public boolean addCategory(String name, String description, String image){
        
        boolean isDataSaved = false;
        
        createConnection createCon = new createConnection();
        Connection con = createCon.getCon();
        
        try {
            Statement stmt = con.createStatement();
            
            int affectedRows = stmt.executeUpdate("insert into ServiceCat (`name`, `description`, `image`) values('"+name+"', '"+description+"', '"+image+"')");
            if(affectedRows > 0){
                isDataSaved = true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
       
        return isDataSaved;
        
    }
    
    public boolean updateCategory(String id, String name, String description, String image){
        
        boolean isDataUpdated = false;
        
        createConnection createCon = new createConnection();
        Connection con = createCon.getCon();
        
        try {
            Statement stmt = con.createStatement();
            int affectedRows = 0;
            if(image.equals(""))
                affectedRows = stmt.executeUpdate("update ServiceCat SET `name`= '"+name+"', `description` = '"+description+"' where id='"+id+"'");
            else
                affectedRows = stmt.executeUpdate("update ServiceCat SET `name`= '"+name+"', `description` = '"+description+"', `image` = '"+image+"' where id='"+id+"'");
            if(affectedRows > 0){
                isDataUpdated = true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
       
        return isDataUpdated;
        
    }
    
}
