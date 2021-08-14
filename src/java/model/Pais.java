/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author Francisca Gómez
 */
public class Pais implements ValidarPais{

    //CONSTRUCTORES - SET - GET
    int id_pais;
    String descripcion_pais;
    String estado_pais;

    public Pais() {
    }

    public Pais(int id_pais, String descripcion_pais, String estado_pais) {
        this.id_pais = id_pais;
        this.descripcion_pais = descripcion_pais;
        this.estado_pais = estado_pais;
    }

    public int getId_pais() {
        return id_pais;
    }

    public void setId_pais(int id_pais) {
        this.id_pais = id_pais;
    }

    public String getDescripcion_pais() {
        return descripcion_pais;
    }

    public void setDescripcion_pais(String descripcion_pais) {
        this.descripcion_pais = descripcion_pais;
    }

    public String getEstado_pais() {
        return estado_pais;
    }

    public void setEstado_pais(String estado_pais) {
        this.estado_pais = estado_pais;
    }

   //FUNCIONES REGISTRAR - BUSCAR - MODIFICAR - CAMBIAR ESTADO
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int registrarPais(Pais p) {
        int r = 0;
        String sql = "INSERT INTO public.pais (descripcion_pais, estado_pais)\n"
                + "	VALUES (?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, p.getDescripcion_pais());
            ps.setString(2, p.getEstado_pais());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                Variables.id = Integer.parseInt(rs.getString("id_usuario"));
                p.setDescripcion_pais(rs.getString("descripcion_pais"));
                p.setEstado_pais(rs.getString("estado_pais"));
            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
            }

        } catch (Exception e) {
            return 0;
        }
    }

    public HashMap seleccionarPais() {
        HashMap<String, String> drop_pais = new HashMap();
        try {
            ConectaBD conn = new ConectaBD();
            String sql = "SELECT id_pais as id_p,descripcion_pais\n"
                    + "	FROM public.pais"
                    + " WHERE estado_pais = 'activo';";
            conn.abrir();
            rs = conn.con.createStatement().executeQuery(sql);
            while (rs.next()) {
                drop_pais.put(rs.getString("id_p"), rs.getString("descripcion_pais"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return drop_pais;
    }
}
