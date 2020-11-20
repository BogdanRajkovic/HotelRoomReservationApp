<%-- 
    Document   : login
    Created on : Sep 24, 2019, 12:05:47 PM
    Author     : Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="d-flex col-12 text-center justify-content-center">
            <form id="regForm" action="Logovanje" method="POST">

                <h1>
                   Uloguj se: 
                </h1>
                
                <div class="d-flex">
                    <div>
                        <label>Korisnicko Ime: </label>   
                    </div>
                    <div class="ml-auto">
                        <input type="text" name="korisnickoIme" placeholder="" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Sifra: </label>   
                    </div>
                    <div class="ml-auto">
                        <input type="password" name="sifra" placeholder="" required/>
                    </div>
                </div>
                
                <div class="col-12 pt-3 text-center">
                    <button class="col-5 btn-primary" type="submit">Uloguj se</button>
                </div>

            </form>
        </div>
    </body>
</html>
