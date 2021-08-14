
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;

/**
 *
 * @author Alvaro
 */
public class consulta extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        PrintWriter out = response.getWriter();
        String cod = request.getParameter("codigo");
            try {
                ArrayList<Prestamo> prestamos = new ArrayList<Prestamo>();                        
                GestorBD gestorBD = new GestorBD();
                prestamos = gestorBD.leerTodosP (cod);
                if (prestamos != null){
                    request.setAttribute("Prestamo", prestamos);
                    request.getRequestDispatcher("/resultadoConsulta.jsp").forward(request, response);                            
                }else
                  request.getRequestDispatcher("/noEncontrado.jsp").forward(request, response);                             
                }   
         finally{
                out.close();
            }
    }
        
        /*String cod = request.getParameter("codigo");
            try {
                Prestamo prestamo;
                GestorBD gestorBD = new GestorBD();
                prestamo = gestorBD.consultar(cod);
                if (prestamo != null){
                    request.setAttribute("atribPres",prestamo);
                    request.getRequestDispatcher("/resultadoConsulta.jsp").forward(request, response);                            
                }else{
                  request.getRequestDispatcher("/noEncontrado.jsp").forward(request, response);                             
                }               
        }finally{
                out.close();
            }*/
    

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

