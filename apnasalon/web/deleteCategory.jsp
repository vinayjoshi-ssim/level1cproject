<%@page import="DAO.CategoryDAO"%>
<%

    String id = request.getParameter("id");
    
    CategoryDAO dao = new CategoryDAO();
    boolean isDeleted = dao.deleteCategory(id);
    
    if(isDeleted){
        response.sendRedirect("ServiceCategory.jsp?isDeleted="+isDeleted+"&msg=Category Deleted Successfully...");
    }else{
        response.sendRedirect("ServiceCategory.jsp?isDeleted="+isDeleted+"&msg=Category Was Not Deleted...");
    }
    

%>