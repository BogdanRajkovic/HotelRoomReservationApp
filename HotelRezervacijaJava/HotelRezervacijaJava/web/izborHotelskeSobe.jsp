<%-- 
    Document   : izborHotelskeSobe
    Created on : Sep 25, 2019, 3:46:30 PM
    Author     : Bogdan
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="konekcija.Konekcija"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
        <%
            out.println("<br>");
            int hotelID = Integer.parseInt(request.getParameter("HotelID"));
            //out.println(hotelID);
            session.setAttribute("hotelID", hotelID);
            String sqlUpit  ="SELECT * FROM hotel,hotelskasoba,tiphotelskesobe where hotel.HotelID ='"+hotelID+"'and hotelskasoba.HotelID='"+hotelID+"' and hotelskasoba.tipHotelskeSobeID = tiphotelskesobe.tipHotelskeSobeID;";
                              // select * FROM hotel, hotelskasoba where hotel.HotelID =1 and hotelskasoba.HotelID=1
            try
           {
                Konekcija konekcija = new Konekcija();
                Connection con = konekcija.getKonekcija();
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(sqlUpit);
                rs.last();
                int ukupanBrojRedovaRS= rs.getRow();
                rs.first();
                out.println(rs.getString("NazivHotela") + ", " + rs.getString("Grad")+ ", " +rs.getString("BrojZvezdica") +" stars");
                out.println("<h2>Dostupni tipovi soba: </h2>");
                    for(int i=0;i<ukupanBrojRedovaRS;i++)
                    {
                        out.println("<form action=\"potvrdaRezervacijeSobe.jsp\" method =\"post\">");

                        String NazivHotela = rs.getString("NazivHotela");
                        String Grad = rs.getString("Grad");
                        String BrojZvezdica = rs.getString("BrojZvezdica");
                        String NazivTipaHotelskeSobe = rs.getString("NazivTipaHotelskeSobe");
                        String BrojKreveta = rs.getString("BrojKreveta");
                        String BrojLezajnihMesta = rs.getString("BrojLezajnihMesta");
                        String cenaPoNocenju = rs.getString("hotelskasoba.CenaPoNocenju");
                        
                        out.println("<input type=\"hidden\" name=\"hotelID\" value=\""+hotelID+"\">");
                        out.println("<input type=\"hidden\" name=\"NazivHotela\" value=\""+NazivHotela+"\">");
                        out.println("<input type=\"hidden\" name=\"Grad\" value=\""+Grad+"\">");
                        out.println("<input type=\"hidden\" name=\"BrojZvezdica\" value=\""+BrojZvezdica+"\">");
                        out.println("<input type=\"hidden\" name=\"NazivTipaHotelskeSobe\" value=\""+NazivTipaHotelskeSobe+"\">");
                        out.println("<input type=\"hidden\" name=\"BrojKreveta\" value=\""+BrojKreveta+"\">");
                        out.println("<input type=\"hidden\" name=\"BrojLezajnihMesta\" value=\""+BrojLezajnihMesta+"\">");
                        out.println("<input type=\"hidden\" name=\"cenaPoNocenju\" value=\""+cenaPoNocenju.toString()+"\">");

                        ArrayList<String> slike = new ArrayList<String>(Arrays.asList(rs.getString("hotelskasoba.slike").split(";")));

                        out.println("<div class=\" d-flex d-row w-100 mb-3 background-gray \">");
                            for(int index=0;index<slike.size();index++) {
                                if (index < 2) {
                                    out.println("<div class=\" w-25 p-3 background-gray \">");
                                        out.println("<img src=\""+ slike.get(index) +"\" alt=\"Slika Hotela\" width=\"100%\" height=\"300px\">");
                                    out.println("</div>");
                                }
                            }
                            out.println("<div class=\" w-25 p-3 background-gray \">");
                                out.println("<div class=\" py-3 \">");
                                    out.println(rs.getString("NazivTipaHotelskeSobe"));
                                out.println("</div>");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("Broj kreveta: "+ "<label>"+"</label>"+rs.getString("BrojKreveta"));
                                out.println("</div>");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("Broj lezajnih mesta: "+rs.getString("BrojLezajnihMesta"));
                                out.println("</div>");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("Cena po noci: "+rs.getDouble("hotelskasoba.CenaPoNocenju")+" €");
                                out.println("</div>");
                            out.println("</div>");
                            out.println("<div class=\" w-25 p-3 background-gray \">");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("Datum Dolaska:");
                                out.println("</div>");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("<input type=\"date\" name=\"datumDolaska\" required>");
                                out.println("</div>");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("Datum Odlaska:"); 
                                out.println("</div>");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("<input type=\"date\" name=\"datumOdlaska\" required>");
                                out.println("</div>");
                                out.println("<div class=\" pb-3 \">");
                                    out.println("<button class=\" btn-primary w-50 \" type=\"submit\">Rezervisi</button>");  
                                out.println("</div>");
                            out.println("</div>");
                        out.println("</div>");
                    out.println("</form>");
                    
                    rs.next();
                }
           }
           catch(Exception e)
           {
               out.println("Greska: "+e);
           }
            
        %>
<%@include file="footer.jsp" %>
