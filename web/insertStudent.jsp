<%@page import="student.insertStudentData"%>
<%
  
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    
    insertStudentData ins = new insertStudentData();
    int afftectedRows = ins.saveData(name, phone, email);
    
    if(afftectedRows > 0)
        out.print("Data insrerted Successfully");
    else
        out.print("There is an error");

%>