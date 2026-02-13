<%@page import="DAO.CategoryDAO"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%
String name = "";
String description = "";
String fileName = "";

if(ServletFileUpload.isMultipartContent(request)) {
    
    String uploadPath = application.getRealPath("") + File.separator + "admin/assets/img/category";
    File uploadDir = new File(uploadPath);
    if (!uploadDir.exists()) uploadDir.mkdir();

    DiskFileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);

    List<FileItem> items = upload.parseRequest(request);

    for(FileItem item : items) {

        
        if(item.isFormField()) {
            if(item.getFieldName().equals("name")) {
                name = item.getString();
            }
            if(item.getFieldName().equals("description")) {
                description = item.getString();
            }
        }
        
        else {
            fileName = new File(item.getName()).getName();
            item.write(new File(uploadPath + File.separator + fileName));
        }
    }

    CategoryDAO dao = new CategoryDAO();
    boolean isOperationExecuted = dao.addCategory(name, description, fileName);
    if(isOperationExecuted)
        response.sendRedirect("ServiceCategory.jsp?isOperationExecuted="+isOperationExecuted+"&msg=Category Added Successfully");
    else
        response.sendRedirect("ServiceCategory.jsp?isOperationExecuted="+isOperationExecuted+"&msg=There is some error");
}
%>
