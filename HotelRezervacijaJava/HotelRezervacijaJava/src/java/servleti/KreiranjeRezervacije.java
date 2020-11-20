/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import konekcija.Konekcija;

/**
 *
 * @author Bogdan
 */
public class KreiranjeRezervacije extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try
        {
            if (request.getSession().getAttribute("osobaID") == null) 
            {
                response.sendRedirect("logovanje.jsp");
            }
            else
            {
                int hotelID = (int)request.getSession().getAttribute("hotelID");
                int osobaID = (int)request.getSession().getAttribute("osobaID");
                String datumDolaska = (String)request.getSession().getAttribute("datumDolaska");
                String datumOdlaska = (String)request.getSession().getAttribute("datumOdlaska");
                double ukupnaCena = (double)request.getSession().getAttribute("ukupnaCena");
//                out.println(hotelID);
//                out.println(osobaID);
//                out.println(datumDolaska);
//                out.println(datumOdlaska);
//                out.println(ukupnaCena);
                String sqlUpdate = "INSERT INTO Rezervacija (DatumDolaska, DatumOdlaska, Odrasli, Deca, BrojSoba, "
                        + "NacinPlacanja, PlacenaCena, DatumRezervacije, DatumModifikacije, OsobaID, HotelID)"
                        + "VALUES('"+datumDolaska+"','"+datumOdlaska+"',2,0,1,'Kartica','"+ukupnaCena+"',NOW(),NOW(),'"+osobaID+"','"+hotelID+"')";
                Konekcija konekcije = new Konekcija();
                Connection con = konekcije.getKonekcija();
                Statement stmt = con.createStatement();
                stmt.executeUpdate(sqlUpdate);
                out.println("<script type=\"text/javascript\">");  
                out.println("alert('Uspesno napravljena rezervacija');");
                out.println("window.location = 'index.jsp';"); 
                out.println("</script>");
            }
        }
        catch(Exception e)
        {
            out.println("Greska: "+e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
