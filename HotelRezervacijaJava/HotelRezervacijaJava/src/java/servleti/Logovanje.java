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
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import konekcija.Konekcija;

/**
 *
 * @author Bogdan
 */
public class Logovanje extends HttpServlet {

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
        
        String korisnickoIme = request.getParameter("korisnickoIme");
        String sifra = request.getParameter("sifra");
        
        PrintWriter out = response.getWriter();
        
        try{
           
            Konekcija konekcija = new Konekcija();
            Connection con = konekcija.getKonekcija();
            Statement stmt = con.createStatement();
            ResultSet rs =stmt.executeQuery("SELECT OsobaID,korisnickoIme, Sifra FROM OSOBA WHERE "
                    + "korisnickoIme= '"+korisnickoIme+"'and sifra='"+sifra+"'");
            if(rs.next())
            {
                int osobaID = rs.getInt("OsobaID");
                HttpSession session = request.getSession();
                session.setAttribute("osobaID",osobaID);
                session.setAttribute("korisnickoIme",korisnickoIme);
                response.sendRedirect("index.jsp"); 
            }
            else
            {
                out.println("<script type=\"text/javascript\">");  
                out.println("alert('Pogresno Korisnicko ime i sifra');");
                out.println("window.location = 'logovanje.jsp';"); 
                out.println("</script>");
            }

           /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Logovanje</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("</body>");
            out.println("</html>");*/
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
