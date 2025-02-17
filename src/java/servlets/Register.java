/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ayoub
 */
public class Register extends HttpServlet {
    Connection con;
    Statement state;
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try {
            //create connection
            con=MyConnection.getMyConnection();
            state=con.createStatement();
         
            String nom=request.getParameter("nom");
            String prenom=request.getParameter("prenom");
            String email=request.getParameter("email");
            String typeProfile=request.getParameter("typeProfile");
            String password=request.getParameter("password");
            
            //insert into intervenant
            if(typeProfile.equalsIgnoreCase("Ingénieur") || typeProfile.equalsIgnoreCase("Technicien") || typeProfile.equalsIgnoreCase("Directeur") || typeProfile.equalsIgnoreCase("Chef departement")){
                state.executeUpdate("insert into intervenant values(ADMINSEQUENCE.NEXTVAL"+"','"+nom+"','"+prenom
                        +"','"+email+"','"+password+"','"+typeProfile+"')");
                response.sendRedirect("views/intervenant.jsp");
            }
            //insert into administrateur
            if(typeProfile.equalsIgnoreCase("Agent developement") || typeProfile.equalsIgnoreCase("Chef de branche")){
                state.executeUpdate("insert into administrateur values(ADMINSEQUENCE.NEXTVAL"+",'"+nom+"','"+prenom
                        +"','"+email+"','"+password+"','"+typeProfile+"')");
                response.sendRedirect("views/administrateur.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
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