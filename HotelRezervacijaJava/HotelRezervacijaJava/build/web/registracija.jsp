<%-- 
    Document   : registracija
    Created on : Sep 23, 2019, 11:55:14 PM
    Author     : Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
        <title>Registracija</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="d-flex col-12">
            <div class="d-flex justify-content-center col-12">
            <form id="regForm" action="Registracija" method="POST">
                <div class="text-center">
                    <th style="width: 100%;"><h1>Regisracija</h1>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label class="">Ime: </label>   
                    </div>
                    <div class="ml-auto">
                        <input class="ml-auto" type="text" id="ime" name="ime"  placeholder="" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Prezime: </label>
                    </div>
                    <div class="ml-auto">
                        <input type="text" id="prezime" name="prezime" placeholder="" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Telefon: </label>
                    </div>
                    <div class="ml-auto">
                        <input type="text" id="telefon" name="telefon" placeholder="Primer: 06x-xxx-xxxx" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Drzava: </label>
                    </div>
                    <div class="ml-auto">
                        <input type="text" id="drzava" name="drzava" placeholder="" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Grad: </label>   
                    </div>
                    <div class="ml-auto">
                        <input type="text" id="grad" name="grad" placeholder="" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Adresa stanovanja: </label>   
                    </div>
                    <div class="ml-auto">
                        <input type="text" id="adresa" name="adresa" placeholder="" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Email: </label>   
                    </div>
                    <div class="ml-auto">
                        <input type="text" id="email" name="email" placeholder="primer@gmail.com" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div>
                        <label>Korisnicko ime: </label>   
                    </div>
                    <div class="ml-auto">
                        <input type="text" id="korisnickoIme" name="korisnickoIme" placeholder="" required/>
                    </div>
                </div>
                
                <div class="d-flex">
                    <div class="text-right">
                        <label>Sifra: </label>
                    </div>
                    <div class="ml-auto">
                        <input type="password" id="sifra" name="sifra" required/>
                    </div>
                </div>
                
                <div class="col-12 pt-3 text-center">
                    <button class="btn-primary col-6" type="submit">Registruj Se</button>
                </div>
            </form>
        </div>
        </div>
    </body>
</html>
