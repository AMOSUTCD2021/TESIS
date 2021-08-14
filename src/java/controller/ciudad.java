/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Ciudad;

/**
 *
 * @author Francisca Gómez
 */
@WebServlet(name = "ciudad", urlPatterns = {"/ciudad"})
public class ciudad extends HttpServlet {

    Ciudad c = new Ciudad();
    Ciudad cbd = new Ciudad();
    int r;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        if (accion.equals("Guardar")) {            
            String descrip = request.getParameter("descriptxt");
            String buscar = request.getParameter("search");
            int depar = Integer.valueOf(request.getParameter("drop_dep"));
            int length = descrip.length();
            if (length == 0) {
                request.getRequestDispatcher("mensaje.jsp").forward(request, response);
            } else {
                c.setDescripcion_ciudad(descrip);
                c.setDescripcion_ciudad(buscar);
                c.setId_depar(depar);
                r = cbd.registrarCiudad(c);
                if (r == 0) {
                    request.getRequestDispatcher("registradoReferenciales.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("errorGeneral.jsp").forward(request, response);
                }
            }
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
