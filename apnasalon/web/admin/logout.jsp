<%

    session.removeAttribute("isLoggedIn");
    
    response.sendRedirect("index.jsp?msg=Logged Out Successfully");

%>