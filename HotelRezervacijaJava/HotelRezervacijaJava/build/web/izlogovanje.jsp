<%-- 
    Document   : izlogovanje
    Created on : Sep 24, 2019, 1:56:24 PM
    Author     : Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Izlogovanje JSP</title>
    </head>
    <body>
        <%
            session.invalidate();
        %>
        <a href="http://localhost:8080/HotelRezervacijaJava/index.jsp">Pocetna</a>
    </body>
</html>
