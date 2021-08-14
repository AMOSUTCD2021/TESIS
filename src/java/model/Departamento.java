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
public class Departamento {
    
    //CONSTRUCTORES - SET - GET
    int id_depar, id_pais;
    String descripcion_depar;

    public Departamento() {
    }

    public Departamento(int id_depar, int id_pais, String descripcion_depar) {
        this.id_depar = id_depar;
        this.id_pais = id_pais;
        this.descripcion_depar = descripcion_depar;
    }

    public int getId_depar() {
        return id_depar;
    }

    public void setId_depar(int id_depar) {
        this.id_depar = id_depar;
    }

    public int getId_pais() {
        return id_pais;
    }

    public void setId_pais(int id_pais) {
        this.id_pais = id_pais;
    }

    public String getDescripcion_depar() {
        return descripcion_depar;
    }

    public void setDescripcion_depar(String descripcion_depar) {
        this.descripcion_depar = descripcion_depar;
    }
    
    //FUNCIONES REGISTRAR - BUSCAR - MODIFICAR - CAMBIAR ESTADO
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public int registrarDepartamento(Departamento d) {
        int r = 0;
        String sql = "INSERT INTO public.departamento(\n"
                + "	descripcion_departamento, id_pais)\n"
                + "	VALUES (?, ?);";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, d.getDescripcion_depar());
            ps.setInt(2, d.getId_pais());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                Variables.id = Integer.parseInt(rs.getString("id_usuario"));
                d.setDescripcion_depar(rs.getString("descripcion_departamento"));
                d.setId_pais(rs.getInt("id_pais"));
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

    public HashMap seleccionarDepartamento() {
        HashMap<String, String> drop_depar = new HashMap();
        try {
            ConectaBD conn = new ConectaBD();
            String sql = "SELECT id_departamento as id_d,descripcion_departamento\n"
                    + "	FROM public.departamento;";
            conn.abrir();
            rs = conn.con.createStatement().executeQuery(sql);
            while (rs.next()) {
                drop_depar.put(rs.getString("id_d"), rs.getString("descripcion_departamento"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return drop_depar;
    }
    
    public int buscarDepartamento(Departamento d) {
        int r = 0;
        String sql = "SELECT dep.descripcion_departamento, pais.descripcion_pais\n"
                + "	FROM pais pais\n"
                + "	INNER JOIN departamento dep\n"
                + "	ON pais.id_pais = dep.id_pais\n"
                + "	WHERE dep.descripcion_departamento = ?;";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, d.getDescripcion_depar());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                d.setDescripcion_depar(rs.getString("descripcion_departamento"));
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
