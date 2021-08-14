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
public class Funcionario implements ValidarFuncionario {

    //CONSTRUCTORES - SET - GET
    int id_fun, id_barrio;
    String nom_fun, ape_fun, ci_fun, cargo_fun, email_fun, tel_fun, dir_fun, estado_fun,nom_usu_mod;

    public Funcionario() {
    }

    public Funcionario(int id_fun, int id_barrio, String nom_fun, String ape_fun, String ci_fun, String cargo_fun, String email_fun, String tel_fun, String dir_fun, String estado_fun, String nom_usu_mod) {
        this.id_fun = id_fun;
        this.id_barrio = id_barrio;
        this.nom_fun = nom_fun;
        this.ape_fun = ape_fun;
        this.ci_fun = ci_fun;
        this.cargo_fun = cargo_fun;
        this.email_fun = email_fun;
        this.tel_fun = tel_fun;
        this.dir_fun = dir_fun;
        this.estado_fun = estado_fun;
        this.nom_usu_mod = nom_usu_mod;
    }

    public int getId_fun() {
        return id_fun;
    }

    public void setId_fun(int id_fun) {
        this.id_fun = id_fun;
    }

    public int getId_barrio() {
        return id_barrio;
    }

    public void setId_barrio(int id_barrio) {
        this.id_barrio = id_barrio;
    }

    public String getNom_fun() {
        return nom_fun;
    }

    public void setNom_fun(String nom_fun) {
        this.nom_fun = nom_fun;
    }

    public String getApe_fun() {
        return ape_fun;
    }

    public void setApe_fun(String ape_fun) {
        this.ape_fun = ape_fun;
    }

    public String getCi_fun() {
        return ci_fun;
    }

    public void setCi_fun(String ci_fun) {
        this.ci_fun = ci_fun;
    }

    public String getCargo_fun() {
        return cargo_fun;
    }

    public void setCargo_fun(String cargo_fun) {
        this.cargo_fun = cargo_fun;
    }

    public String getEmail_fun() {
        return email_fun;
    }

    public void setEmail_fun(String email_fun) {
        this.email_fun = email_fun;
    }

    public String getTel_fun() {
        return tel_fun;
    }

    public void setTel_fun(String tel_fun) {
        this.tel_fun = tel_fun;
    }

    public String getDir_fun() {
        return dir_fun;
    }

    public void setDir_fun(String dir_fun) {
        this.dir_fun = dir_fun;
    }

    public String getEstado_fun() {
        return estado_fun;
    }

    public void setEstado_fun(String estado_fun) {
        this.estado_fun = estado_fun;
    }

    public String getNom_usu_mod() {
        return nom_usu_mod;
    }

    public void setNom_usu_mod(String nom_usu_mod) {
        this.nom_usu_mod = nom_usu_mod;
    }
    
    //FUNCIONES REGISTRAR - BUSCAR - MODIFICAR - CAMBIAR ESTADO
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int registrarFuncionario(Funcionario f) {
        int r = 0;
        String sql = "INSERT INTO public.funcionario(\n"
                + "	nombre_funcionario, apellido_funcionario, cedula_funcionario, cargo_funcionario, email_funcionario, telefono_funcionario, direccion_funcionario, estado_funcionario, nombre_usuario_modificacion, fecha_modificacion, id_barrio)\n"
                + "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, (SELECT current_date), ?);";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, f.getNom_fun());
            ps.setString(2, f.getApe_fun());
            ps.setString(3, f.getCi_fun());
            ps.setString(4, f.getCargo_fun());
            ps.setString(5, f.getEmail_fun());
            ps.setString(6, f.getTel_fun());
            ps.setString(7, f.getDir_fun());
            ps.setString(8, f.getEstado_fun());
            ps.setString(9, f.getNom_usu_mod());
            ps.setInt(10, f.getId_barrio());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                Variables.id = Integer.parseInt(rs.getString("id_usuario"));
                f.setNom_fun(rs.getString("nombre_funcionario"));
                f.setApe_fun(rs.getString("apellido_funcionario"));
                f.setCi_fun(rs.getString("cedula_funcionario"));
                f.setCargo_fun(rs.getString("cargo_funcionario"));
                f.setEmail_fun(rs.getString("email_funcionario"));
                f.setTel_fun(rs.getString("telefono_funcionario"));
                f.setDir_fun(rs.getString("direccion_funcionario"));
                f.setEstado_fun(rs.getString("estado_funcionario"));
                f.setNom_usu_mod(rs.getString("nombre_usuario_modificacion"));
                f.setId_barrio(rs.getInt("id_barrio"));
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

    public HashMap seleccionarFuncionario() {
        HashMap<String, String> drop_fun = new HashMap();
        try {
            ConectaBD conn = new ConectaBD();
            String sql = "SELECT id_funcionario as id_f,nombre_funcionario\n"
                    + "	FROM public.funcionario;";
            conn.abrir();
            rs = conn.con.createStatement().executeQuery(sql);
            while (rs.next()) {
                drop_fun.put(rs.getString("id_f"), rs.getString("nombre_funcionario"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return drop_fun;
    }
}
