/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class Registracija extends HttpServlet {

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
        
           String ime = request.getParameter("ime");
           String prezime = request.getParameter("prezime");
           String telefon = request.getParameter("telefon");
           String drzava = request.getParameter("drzava");
           String grad = request.getParameter("grad");
           String adresa = request.getParameter("adresa");
           String email = request.getParameter("email");
           String korisnickoIme = request.getParameter("korisnickoIme");
           String sifra = request.getParameter("sifra");
           PrintWriter out = response.getWriter();
        try
        {
            
            Konekcija konekcija = new Konekcija();
            Connection kon = konekcija.getKonekcija();
            Statement stmt = kon.createStatement();
            
            stmt.executeUpdate
                ("INSERT INTO OSOBA(ime, prezime, telefon, drzava, grad, adresaStanovanja, mailAdresa, korisnickoIme, sifra, poeni,  isManager, isAdmin, datumModifikacije)"
                      + "VALUES('"+ime+"','"+prezime+"','"+telefon+"','"+drzava+"','"+grad+"','"+adresa+"','"+email+"','"+korisnickoIme+"','"+sifra+"',0,0,0,NOW())");
            
           //out.println("Podaci upisani u bazu!");
          
           out.println("<script type=\"text/javascript\">");  
           out.println("alert('Podaci uspesno upisani u bazu');");
           out.println("window.location = 'logovanje.jsp';"); 
           out.println("</script>");
           
           stmt.close();
           kon.close();
           out.close();
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
