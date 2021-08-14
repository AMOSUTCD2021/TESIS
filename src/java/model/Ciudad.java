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
public class Ciudad {

    //CONSTRUCTORES - SET - GET
    int id_ciudad, id_depar;
    String descripcion_ciudad;

    public Ciudad() {
    }

    public Ciudad(int id_ciudad, int id_depar, String descripcion_ciudad) {
        this.id_ciudad = id_ciudad;
        this.id_depar = id_depar;
        this.descripcion_ciudad = descripcion_ciudad;
    }

    public int getId_ciudad() {
        return id_ciudad;
    }

    public void setId_ciudad(int id_ciudad) {
        this.id_ciudad = id_ciudad;
    }

    public int getId_depar() {
        return id_depar;
    }

    public void setId_depar(int id_depar) {
        this.id_depar = id_depar;
    }

    public String getDescripcion_ciudad() {
        return descripcion_ciudad;
    }

    public void setDescripcion_ciudad(String descripcion_ciudad) {
        this.descripcion_ciudad = descripcion_ciudad;
    }
    
    //FUNCIONES REGISTRAR - BUSCAR - MODIFICAR - CAMBIAR ESTADO
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public int registrarCiudad(Ciudad c) {
        int r = 0;
        String sql = "INSERT INTO public.ciudad(descripcion_ciudad)\n"
                + "	VALUES (?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, c.getDescripcion_ciudad());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                Variables.id = Integer.parseInt(rs.getString("id_usuario"));
                c.setDescripcion_ciudad(rs.getString("descripcion_ciudad"));
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

    public HashMap seleccionarCiudad() {
        HashMap<String, String> drop_ciu = new HashMap();
        try {
            ConectaBD conn = new ConectaBD();
            String sql = "SELECT id_ciudad as id_c,descripcion_ciudad\n"
                    + "	FROM public.ciudad;";
            conn.abrir();
            rs = conn.con.createStatement().executeQuery(sql);
            while (rs.next()) {
                drop_ciu.put(rs.getString("id_c"), rs.getString("descripcion_ciudad"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return drop_ciu;
    }

}
