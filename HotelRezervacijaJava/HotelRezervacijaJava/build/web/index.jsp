<%-- 
    Document   : index
    Created on : Sep 23, 2019, 9:51:29 PM
    Author     : Bogdan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="konekcija.Konekcija"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@include file="header.jsp" %>
        <div class="text-center">
            <h2> Hoteli koji su na raspolaganju</h2>
        </div>
        
        <div class="d-flex flex-column px-3">
            <%
                String sqlSelectUpit ="Select * from Hotel";
                try
                {
                    Konekcija konekcije = new Konekcija();
                    Connection con = konekcije.getKonekcija();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(sqlSelectUpit);
                    rs.last();
                    int UkupanBrojRedovaRS = rs.getRow();
                    rs.first();
                    for(int i=0;i<UkupanBrojRedovaRS;i++)
                    {
                        out.println("<form action=\"izborHotelskeSobe.jsp\" method=\"post\">");
                        out.println("<div class=\"d-flex flex-row col-12 p-0 mb-3 color-gray\">");
                            out.println("<div class=\"col-6 py-3\">");
                                int hotelID = rs.getInt("HotelID");
                                out.println("<input type=\"hidden\" id=\"HotelID\" name=\"HotelID\" value=\""+hotelID+"\">");
                                out.println("<div class=\"col-12 px-3 pt-3\">"+rs.getString("NazivHotela")+"</div>");
                                out.println("<div class=\"col-12 pt-3\">"+rs.getString("AdresaHotela")+", "+rs.getString("Grad")+", "+rs.getString("Drzava")+"</div>");
                                out.println("<div class=\"col-9 px-3 py-3\">");
                                    String slika = rs.getString("Slike").split(";")[0];
                                    out.println("<img src=\""+slika+"\" alt=\"Slika Hotela\" width=\"100%\" height=\"300px\">");
                                out.println("</div>");
                            
                            out.println("</div>");
                            
                            out.println("<div class=\"d-flex flex-column align-items-end w-50 py-3\">");
                            
                                //width 100%
                                out.println("<div class=\"d-flex flex-row w-100 py-3\">");
                                
                                    //width 50%
                                    out.println("<div class=\"w-50\">");
                                        out.println("<div>"+rs.getInt("BrojZvezdica")+ " stars" +"</div>");
                                    out.println("</div>");
                                    
                                    //width 50%
                                    out.println("<div class=\"w-50 pl-0\">");
                                        out.println("<div>Od: "+rs.getFloat("CenaPoNocenju")+ " €"+ "</div>");
                                    out.println("</div>");
                                
                                out.println("</div>");
                                
                                //width 100%
                                out.println("<div class=\"w-100 pb-3\">");
                                    out.println("<div>"+rs.getString("Opis")+"</div>");
                                out.println("</div>");
                               
                                //width 100%
                                out.println("<div class=\"w-100 pb-3 text-right mt-auto\">");
                                    out.println("<button class=\"btn-primary w-50 p-0\" type=\"submit\">Rezervisi</button>");
                                out.println("</div>");
                            
                            out.println("</div>");
                        out.println("</div>");
                        rs.next();
                        out.println("</form>");
                    }
                    
                }
                catch(Exception e)
                {
                    out.println("Greska: "+e);
                }
            %>
        </div>
            <%@include file="footer.jsp" %>

