<%-- 
    Document   : header
    Created on : Oct 27, 2019, 6:13:45 PM
    Author     : Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index</title>
        <style type="text/css">
            <%@include file="css/bootstrap.min.css" %>
        </style>
        <style type="text/css">
            <%@include file="css/style.css" %>
        </style>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="js/bootstrap.js"></script>
    </head>
    <body>
        <div class="d-flex flex-row col-12 align-items-center bd-highlight mb-3 header-wrapper">
            <div class="px-3">
                <a href="http://localhost:8080/HotelRezervacijaJava/index.jsp">Pocetna</a>
            </div>

        <%
            if(session.getAttribute("osobaID")==null)
            {
               out.println("<div class=\"px-3\">");
               out.println(" <a href=\"http://localhost:8080/HotelRezervacijaJava/logovanje.jsp\">Uloguj se</a>");
               out.println("</div>");
            }
            else
            {
               out.println("<div class=\"px-3\">");
               out.println(" <a href=\"http://localhost:8080/HotelRezervacijaJava/izlogovanje.jsp\">Izloguj se</a>");
               out.println("</div>");
            }
        %>
            <div class="px-3">
                <a href="http://localhost:8080/HotelRezervacijaJava/registracija.jsp">Registruj se</a>
            </div>
        </div>
        
