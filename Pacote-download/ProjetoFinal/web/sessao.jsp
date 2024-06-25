<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String email = (String) session.getAttribute("email");
            if(email == null){
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
