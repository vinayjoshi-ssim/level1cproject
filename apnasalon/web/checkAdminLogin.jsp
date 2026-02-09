<%@page import="DAO.AdminLoginDAO"%>
<%

    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    AdminLoginDAO loginDao = new AdminLoginDAO();
    boolean isValid = loginDao.validate(email, password);
    
    if(isValid){
        response.sendRedirect("AdminDashboard.jsp");
    }else{
        response.sendRedirect("index.jsp?msg=Invalid Username Or Password");
    }
%>