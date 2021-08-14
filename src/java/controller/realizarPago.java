
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.GestorBD;
import model.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author Alvaro
 */
@WebServlet(name = "realizarPago", urlPatterns = {"/realizarPago"})
public class realizarPago extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //String cod = request.getParameter("codigo");

        try {
            //String fecha_pago = request.getParameter("fecha_pago");
            Integer nro_cuota_pagada = Integer.parseInt(request.getParameter("cuota"));
            String monto_pagado = request.getParameter("importe");
            String interes_pagado = request.getParameter("interes");
            Integer id_cabecera = Integer.parseInt(request.getParameter("cabecera"));
            Integer id_usuario = Integer.parseInt(request.getParameter("usuario"));
            Integer id_prestamo = Integer.parseInt(request.getParameter("cabecera"));
            String estado = request.getParameter("estado");
            GestorBD gestorBD = new GestorBD();

            if (gestorBD.registrar(nro_cuota_pagada, monto_pagado, interes_pagado, id_cabecera, id_usuario, id_prestamo)) {
                SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");

                //  public pago(String fecha_pago, Integer nro_cuota_pagada, String monto_pagado, String interes_pagado, Integer id_cabecera, Integer id_usuario, Integer id_prestamo, String estado) {
                Pago insertarpago = new Pago(df.format(new Date()), nro_cuota_pagada, monto_pagado, interes_pagado, id_cabecera, id_usuario, id_prestamo, estado);
                ServletContext sc = this.getServletContext();
                String path = sc.getRealPath("/WEB-INF/pagos.txt");
                path = path.replace('\\', '/');
                Guardarpago.add(insertarpago, path);

                request.getRequestDispatcher("/registroGuardado.jsp").forward(request, response);

            } else {
                request.getRequestDispatcher("/noHayRegistros.jsp").forward(request, response);
            }

        } finally {
            out.close();
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
