<%-- 
    Document   : potvrdaRezervacijeSobe
    Created on : Oct 25, 2019, 4:38:26 PM
    Author     : Bogdan
--%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@include file="header.jsp" %>

        <%!
            //Funkcija koja formatira string u date
            public Date StringToDate(String s){

            Date result = null;
            try{
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                result  = dateFormat.parse(s);
            }

            catch(ParseException e){
                e.printStackTrace();

            }
            return result ;
            }
        %>
        <%
            String HotelID =request.getParameter("HotelID");
            String NazivHotela = request.getParameter("NazivHotela");
            String Grad = request.getParameter("Grad");
            String BrojZvezdica = request.getParameter("BrojZvezdica");
            String NazivTipaHotelskeSobe = request.getParameter("NazivTipaHotelskeSobe");
            String BrojKreveta = request.getParameter("BrojKreveta");
            String BrojLezajnihMesta = request.getParameter("BrojLezajnihMesta");
            String cenaPoNocenju = request.getParameter("cenaPoNocenju");
            String datumDolaska = request.getParameter("datumDolaska");
            String datumOdlaska = request.getParameter("datumOdlaska");
            
            Date dolazakDatum = StringToDate(datumDolaska);
            Date odlazakDatum = StringToDate(datumOdlaska);
            
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            sdf.format(dolazakDatum.getTime());
            sdf.format(odlazakDatum.getTime());
            
            long danMs = 1000 * 60 * 60 * 24;
            long datumDolaskaMs = dolazakDatum.getTime();
            long datumOdlaskaMs = odlazakDatum.getTime();
            long periodBoravka = (datumOdlaskaMs - datumDolaskaMs) / danMs;
            
            double periodBoravkaDouble = new Double(periodBoravka);
            double cenaPoNocenjuDouble = new Double(cenaPoNocenju);
            
            double cena = periodBoravkaDouble * cenaPoNocenjuDouble;
            session.setAttribute("datumDolaska", datumDolaska);
            session.setAttribute("datumOdlaska", datumOdlaska);
            session.setAttribute("ukupnaCena", cena);
            out.println("<form action=\"KreiranjeRezervacije\" method=\"post\">");
                        
            out.println("<div class=\"col-12 py-3 text-center text-bold \">");
                out.println("Potvrda rezervacije");
            out.println("</div>");
            
            out.println("<div>");
            
                out.println("<div class=\" col-12 p-3 text-center\">");
                    out.println("Hotel : " + NazivHotela + ", " + BrojZvezdica + ", " + Grad);
                out.println("</div>");
                
                out.println("<div class=\" col-12 p-3 text-center\">");
                    out.println("Izabran smeštaj : " + NazivTipaHotelskeSobe);
                out.println("</div>");
                
                out.println("<div class=\" col-12 p-3 text-center\">");
                    out.println("Broj kreveta: " + BrojKreveta);
                out.println("</div>");
                
                out.println("<div class=\" col-12 p-3 text-center\">");
                    out.println("Broj ležajnih mesta: " + BrojLezajnihMesta);
                out.println("</div>");
                
                out.println("<div class=\" col-12 p-3 text-center\">");
                    out.println("Broj noćenja: " + periodBoravka);
                out.println("</div>");
                
                out.println("<div class=\" col-12 p-3 text-center\">");
                    out.println("Cena po noćenju: " + cenaPoNocenju + " €");
                out.println("</div>");
                
                out.println("<div class=\" col-12 p-3 text-center text-bold\">");
                    out.println("Ukupno : " + String.format("%.2f", cena) + " €");
                out.println("</div>");
                
                out.println("<div class=\" d-flex justify-content-center col-12 p-3 \">");
                    out.println("<div class=\" col-3 \">");
                        out.println("<button class=\"btn-primary w-100 p-0\" type=\"submit\" value=\"submit\">Potvrdi rezervaciju</button>");
                    out.println("</div>");
                out.println("</div>");
            out.println("</form>");
            out.println("</div>");
        %> 
<%@include file="footer.jsp" %>
