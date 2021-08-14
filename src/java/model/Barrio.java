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
public class Barrio implements ValidarBarrio{

    //CONSTRUCTORES - SET - GET
    int id_barrio, id_ciudad;
    String descripcion_barrio;

    public Barrio() {
    }

    public int getId_barrio() {
        return id_barrio;
    }

    public void setId_barrio(int id_barrio) {
        this.id_barrio = id_barrio;
    }

    public int getId_ciudad() {
        return id_ciudad;
    }

    public void setId_ciudad(int id_ciudad) {
        this.id_ciudad = id_ciudad;
    }

    public String getDescripcion_barrio() {
        return descripcion_barrio;
    }

    public void setDescripcion_barrio(String descripcion_barrio) {
        this.descripcion_barrio = descripcion_barrio;
    }

    public Barrio(int id_barrio, int id_ciudad, String descripcion_barrio) {
        this.id_barrio = id_barrio;
        this.id_ciudad = id_ciudad;
        this.descripcion_barrio = descripcion_barrio;
    }

    //FUNCIONES REGISTRAR - BUSCAR - MODIFICAR - CAMBIAR ESTADO
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int registrarBarrio(Barrio b) {
        int r = 0;
        String sql = "INSERT INTO public.barrio(\n"
                + "	descripcion_barrio, id_ciudad)\n"
                + "	VALUES (?, ?);";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, b.getDescripcion_barrio());
            ps.setInt(2, b.getId_ciudad());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                Variables.id = Integer.parseInt(rs.getString("id_usuario"));
                b.setDescripcion_barrio(rs.getString("descripcion_barrio"));
                b.setId_ciudad(rs.getInt("id_ciudad"));
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

    public HashMap seleccionarBarrio() {
        HashMap<String, String> drop_bar = new HashMap();
        try {
            ConectaBD conn = new ConectaBD();
            String sql = "SELECT id_barrio as id_b,descripcion_barrio\n"
                    + "	FROM public.barrio;";
            conn.abrir();
            rs = conn.con.createStatement().executeQuery(sql);
            while (rs.next()) {
                drop_bar.put(rs.getString("id_b"), rs.getString("descripcion_barrio"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return drop_bar;
    }
    
    public int buscarBarrio(Barrio b) {
        int r = 0;
        String sql = "SELECT bar.descripcion_barrio, ciu.descripcion_ciudad\n"
                + "	FROM ciudad ciu\n"
                + "	INNER JOIN barrio bar\n"
                + "	ON ciu.id_ciudad = bar.id_ciudad\n"
                + "	WHERE bar.descripcion_barrio = ?;";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, b.getDescripcion_barrio());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                b.setDescripcion_barrio(rs.getString("descripcion_barrio"));
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
}
