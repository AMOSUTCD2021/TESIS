/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Funcionario;
import model.Variables;

/**
 *
 * @author Francisca Gómez
 */
@WebServlet(name = "funcionario", urlPatterns = {"/funcionario"})
public class funcionario extends HttpServlet {

    Funcionario f = new Funcionario();
    Funcionario fbd = new Funcionario();
    int r;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        if (accion.equals("Guardar")) {            
            String nom = request.getParameter("nombretxt");
            String ape = request.getParameter("apellidotxt");
            String ci = request.getParameter("citxt");
            String cargo = request.getParameter("cargotxt");
            String email = request.getParameter("emailtxt");
            String tel = request.getParameter("teltxt");
            String dir = request.getParameter("dirtxt");
            String estado = request.getParameter("customRadio");
            String usu = Variables.usumod;
            int barrio = Integer.valueOf(request.getParameter("drop_bar"));
            int length = nom.length();
            int length2 = ape.length();
            int length3 = ci.length();
            int length4 = cargo.length();
            int length5 = email.length();
            int length6 = tel.length();
            int length7 = dir.length();
            
            if (length == 0||length2 == 0||length3 == 0||length4 == 0||length5 == 0||length6 == 0||length7 == 0) {
                request.getRequestDispatcher("mensaje.jsp").forward(request, response);
            } else {
                f.setNom_fun(nom);
                f.setApe_fun(ape);
                f.setCi_fun(ci);
                f.setCargo_fun(cargo);
                f.setEmail_fun(email);
                f.setTel_fun(tel);
                f.setDir_fun(dir);
                f.setEstado_fun(estado);
                f.setNom_usu_mod(usu);
                f.setId_barrio(barrio);
                r = fbd.registrarFuncionario(f);
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
