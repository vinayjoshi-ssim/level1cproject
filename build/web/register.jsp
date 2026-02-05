<%-- 
    Document   : register
    Created on : 5 Feb 2026, 10:51:03 am
    Author     : SSISM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.8/css/bootstrap.min.css" integrity="sha512-2bBQCjcnw658Lho4nlXJcc6WkV/UxpE/sAokbXPxQNGqmNdQrWqtw26Ns9kFF/yG792pKR1Sx8/Y1Lf1XN4GKA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <center class="m-5" >
            <div class="card" style="width: 300px;">
                <div class="card-body">
                    <h1 class="text text-warning">Register Here</h1>
                    <form action="insertStudent.jsp" class="mt-5" method="POST">
                        <input required="" class="form-control" name="name" type="text" placeholder="Enter Name"><br>
                        <input required="" class="form-control" name="phone" type="number" placeholder="Enter Phone"><br>
                        <input required="" class="form-control" name="email" type="email" placeholder="Enter Email"><br>
                        
                        <button type="submit" class="btn btn-warning">Register</button>
                    </form>
                </div>
            </div>
        </center>
    </body>
</html>
