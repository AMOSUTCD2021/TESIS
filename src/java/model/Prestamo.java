/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Alvaro
 */
public class Prestamo {
    
    
    private String codigo;
    private String fecha_prestamo;
    private Integer cant_cuotas;
    private String monto_prestamo;
    private String fecha_primer_vencimiento;
    
       
    //cabecera
    
    private String porcentaje_interes;        
    private String metodo;  
    
    
    //detalle
    private Integer nro_cuota;
    private String interes;
    private String importe_cuota;
    private String amortizacion;
    private String total_interes;
    private String fecha_vencimiento;
    
    private String saldo_capital;
    private String estado;
    private String usuario;
    
    
    public Prestamo() {
    }


    public Prestamo(String codigo, String fecha_prestamo, Integer cant_cuotas, String monto_prestamo, String fecha_primer_vencimiento, String porcentaje_interes, String metodo) {
        this.codigo = codigo;
        this.fecha_prestamo = fecha_prestamo;
        this.cant_cuotas = cant_cuotas;
        this.monto_prestamo = monto_prestamo;
        this.fecha_primer_vencimiento = fecha_primer_vencimiento;
        this.porcentaje_interes = porcentaje_interes;
        this.metodo = metodo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    
    
    public String getFecha_prestamo() {
        return fecha_prestamo;
    }

    public Integer getCant_cuotas() {
        return cant_cuotas;
    }

    public String getMonto_prestamo() {
        return monto_prestamo;
    }

    public String getFecha_primer_vencimiento() {
        return fecha_primer_vencimiento;
    }

    public String getPorcentaje_interes() {
        return porcentaje_interes;
    }

    public String getMetodo() {
        return metodo;
    }

    
    
    
    
    /*
    public Prestamo(String codigo, String monto_prestamo, Integer nro_cuota, String interes, String importe_cuota, String amortizacion, String fecha_vencimiento, String saldo_capital, String estado, String usuario) {
        this.codigo = codigo;
        this.monto_prestamo = monto_prestamo;
        this.nro_cuota = nro_cuota;
        this.interes = interes;
        this.importe_cuota = importe_cuota;
        this.amortizacion = amortizacion;
        this.fecha_vencimiento = fecha_vencimiento;
        this.saldo_capital = saldo_capital;
        this.estado = estado;
        this.usuario = usuario;
    }

    public Integer getNro_cuota() {
        return nro_cuota;
    }

    public String getInteres() {
        return interes;
    }

    public String getImporte_cuota() {
        return importe_cuota;
    }

    public String getAmortizacion() {
        return amortizacion;
    }

    public String getTotal_interes() {
        return total_interes;
    }

    public String getFecha_vencimiento() {
        return fecha_vencimiento;
    }

    public String getSaldo_capital() {
        return saldo_capital;
    }

    public String getEstado() {
        return estado;
    }

    public String getUsuario() {
        return usuario;
    }
*/

    public Prestamo(String codigo, String monto_prestamo, Integer nro_cuota, String interes, String importe_cuota, String amortizacion, String fecha_vencimiento, String saldo_capital, String estado) {
        this.codigo = codigo;
        this.monto_prestamo = monto_prestamo;
        this.nro_cuota = nro_cuota;
        this.interes = interes;
        this.importe_cuota = importe_cuota;
        this.amortizacion = amortizacion;
        this.fecha_vencimiento = fecha_vencimiento;
        this.saldo_capital = saldo_capital;
        this.estado = estado;
    }

    public Integer getNro_cuota() {
        return nro_cuota;
    }

    public String getInteres() {
        return interes;
    }

    public String getImporte_cuota() {
        return importe_cuota;
    }

    public String getAmortizacion() {
        return amortizacion;
    }

    public String getTotal_interes() {
        return total_interes;
    }

    public String getFecha_vencimiento() {
        return fecha_vencimiento;
    }

    public String getSaldo_capital() {
        return saldo_capital;
    }

    public String getEstado() {
        return estado;
    }

    public String getUsuario() {
        return usuario;
    }
    
    
    

    
   
    
}
