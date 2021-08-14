/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author Alvaro
 */
public class GestorBD {

    private String fecha_prestamo;
    private Integer nro_prestamo;
    private Integer cant_cuotas;
    private Integer nro_cuota;
    private String monto_prestamo;
    private String fecha_primer_vencimiento;
    private String porcentaje_interes;
    private String metodo;

    private String amortizacion_pagada;
    private String interes_pagado;
    private Integer id_cabecera;
    private Integer id_usuario;
    private String interes;
    private String importe_cuota;
    private String amortizacion;
    private String fecha_vencimiento;
    private String saldo_capital;
    private String estado;
    private String usuario;

    private Prestamo prestamHallado;
    private Connection conn;
    private Statement stm;
    private Statement stm1;
    private ResultSet prestamResSet;
    private ResultSet prestamResSet3;
    private String codigo;
    private Prestamo prestamHallado1;
    private Prestamo prestamHallado2;
    private Prestamo prestamHallado3;

    public boolean registrar(Integer nro_cuota, String monto_pagado, String interes_pagado, Integer id_cabecera, Integer id_usuario, Integer id_prestamo) {
        Connection conn = null;
        Statement stm;
        ResultSet rs;
        int resultUpdate = 0;
        int resultUpdate2 = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            stm1 = conn.createStatement();
            resultUpdate = stm.executeUpdate("insert into pago(fecha_pago,nro_cuota_pagada,monto_pagado,interes_pagado,id_cabecera,id_usuario,id_prestamo,estado) "
                    + "values((select current_date)," + nro_cuota + ",'" + monto_pagado + "','" + interes_pagado + "'," + id_cabecera + " ," + id_usuario + ",'" + id_cabecera + "','Pagado');");

           resultUpdate2 = stm.executeUpdate("UPDATE public.detalle_prestamo SET estado='Pagado' WHERE nro_cuota= " + nro_cuota + " and id_cabecera = " + id_cabecera + "");
           
           

            if (resultUpdate != 0) {
                ConectaBD.cerrar();
                return true;
            } else {
                ConectaBD.cerrar();
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public ArrayList<Prestamo> consultar() {
        System.out.println(codigo);
        ArrayList<Prestamo> prestamos = new ArrayList<Prestamo>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            prestamResSet = stm.executeQuery("SELECT fecha_prestamo,nro_prestamo,cant_cuotas,monto_prestamo,porcentaje_interes,fecha_primer_vencimiento,metodo,estado FROM cabecera_prestamo\n"
                    + "WHERE estado='Pendiente'");
            if (!prestamResSet.next()) {
                System.out.println("No se encontro el registro");
                ConectaBD.cerrar();
                return null;

            } else {
                do {
                    System.out.println("Se encontro el registro");
                    codigo = prestamResSet.getString("nro_prestamo");
                    fecha_prestamo = prestamResSet.getString("fecha_prestamo");
                    cant_cuotas = prestamResSet.getInt("cant_cuotas");
                    monto_prestamo = prestamResSet.getString("monto_prestamo");
                    fecha_primer_vencimiento = prestamResSet.getString("fecha_primer_vencimiento");
                    porcentaje_interes = prestamResSet.getString("porcentaje_interes");
                    metodo = prestamResSet.getString("metodo");
                    estado = prestamResSet.getString("estado");
                    prestamHallado2 = new Prestamo(codigo, fecha_prestamo, cant_cuotas, monto_prestamo, fecha_primer_vencimiento, porcentaje_interes, metodo);
                    prestamos.add(prestamHallado2);
                } while (prestamResSet.next());
                ConectaBD.cerrar();
                return prestamos;
            }
        } catch (Exception e) {
            System.out.println("Error en la consulta a la BD");
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<Prestamo> leerTodos(String codigo) {
        System.out.println(codigo);
        ArrayList<Prestamo> prestamos = new ArrayList<Prestamo>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
           //prestamResSet3 = stm.executeQuery ("SELECT nombre FROM public.usuario where id_usuario = '1'");
            
            prestamResSet = stm.executeQuery("SELECT cp.nro_prestamo,cp.monto_prestamo,dp.nro_cuota,dp.interes,dp.importe_cuota,dp.amortizacion,dp.fecha_vencimiento,dp.saldo_capital,"
                    + "dp.estado FROM cabecera_prestamo cp INNER JOIN detalle_prestamo dp on  cp.id_cabecera = dp.id_cabecera where cp.nro_prestamo = '" + codigo + "' "
                    + "and dp.estado ='Pendiente' "
                            + "order by dp.nro_cuota" );
            
            
            
            
            if (!prestamResSet.next()) {
                System.out.println("No se encontro el registro");
                ConectaBD.cerrar();
                return null;

            } else {
                do {
                    
                    
                    codigo = prestamResSet.getString("nro_prestamo");
                    monto_prestamo = prestamResSet.getString("monto_prestamo");
                    nro_cuota = prestamResSet.getInt("nro_cuota");
                    interes = prestamResSet.getString("interes");
                    importe_cuota = prestamResSet.getString("importe_cuota");
                    amortizacion = prestamResSet.getString("amortizacion");
                    fecha_vencimiento = prestamResSet.getString("fecha_vencimiento");
                    saldo_capital = prestamResSet.getString("saldo_capital");
                    estado = prestamResSet.getString("estado");
                   // usuario = prestamResSet3.getString("nombre");
                    prestamHallado1 = new Prestamo(codigo, monto_prestamo, nro_cuota, interes, importe_cuota, amortizacion, fecha_vencimiento, saldo_capital, estado);
                    prestamos.add(prestamHallado1);
                } while (prestamResSet.next());
                ConectaBD.cerrar();
                return prestamos;
            }

        } catch (Exception e) {
            System.out.println("Error en la base de datos");
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<Prestamo> leerTodosP(String codigo) {
        ArrayList<Prestamo> prestamos = new ArrayList<Prestamo>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            prestamResSet = stm.executeQuery("SELECT fecha_prestamo,nro_prestamo,cant_cuotas,monto_prestamo,porcentaje_interes,fecha_primer_vencimiento,metodo FROM cabecera_prestamo WHERE nro_prestamo= '" + codigo + "'");
            if (!prestamResSet.next()) {
                System.out.println("No se encontro el registro");
                ConectaBD.cerrar();
                return null;

            } else {
                do {
                    System.out.println("Se encontro el registro");
                    codigo = prestamResSet.getString("nro_prestamo");
                    fecha_prestamo = prestamResSet.getString("fecha_prestamo");
                    cant_cuotas = prestamResSet.getInt("cant_cuotas");
                    monto_prestamo = prestamResSet.getString("monto_prestamo");
                    fecha_primer_vencimiento = prestamResSet.getString("fecha_primer_vencimiento");
                    porcentaje_interes = prestamResSet.getString("porcentaje_interes");
                    metodo = prestamResSet.getString("metodo");
                    prestamHallado = new Prestamo(codigo, fecha_prestamo, cant_cuotas, monto_prestamo, fecha_primer_vencimiento, porcentaje_interes, metodo);
                    prestamos.add(prestamHallado);
                } while (prestamResSet.next());
                ConectaBD.cerrar();
                return prestamos;
            }

        } catch (Exception e) {
            System.out.println("Error en la base de datos");
            e.printStackTrace();
            return null;
        }
    }

}
