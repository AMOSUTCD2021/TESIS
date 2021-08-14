
package model;

/**
 *
 * @author Alvaro
 */
public class Pago {

    private String fecha_pago;
    private Integer nro_cuota_pagada;    
    private String monto_pagado;
    private String interes_pagado;
    private Integer id_cabecera;
    private Integer id_usuario;
    private Integer id_prestamo;
    private String estado;

    public Pago() {
    }

    public Pago(String fecha_pago, Integer nro_cuota_pagada, String monto_pagado, String interes_pagado, Integer id_cabecera, Integer id_usuario, Integer id_prestamo, String estado) {
        this.fecha_pago = fecha_pago;
        this.nro_cuota_pagada = nro_cuota_pagada;
        this.monto_pagado = monto_pagado;
        this.interes_pagado = interes_pagado;
        this.id_cabecera = id_cabecera;
        this.id_usuario = id_usuario;
        this.id_prestamo = id_prestamo;
        this.estado = estado;
    }

    public String getFecha_pago() {
        return fecha_pago;
    }

    public void setFecha_pago(String fecha_pago) {
        this.fecha_pago = fecha_pago;
    }

    public Integer getNro_cuota_pagada() {
        return nro_cuota_pagada;
    }

    public void setNro_cuota_pagada(Integer nro_cuota_pagada) {
        this.nro_cuota_pagada = nro_cuota_pagada;
    }

    public String getMonto_pagado() {
        return monto_pagado;
    }

    public void setMonto_pagado(String monto_pagado) {
        this.monto_pagado = monto_pagado;
    }

    public String getInteres_pagado() {
        return interes_pagado;
    }

    public void setInteres_pagado(String interes_pagado) {
        this.interes_pagado = interes_pagado;
    }

    public Integer getId_cabecera() {
        return id_cabecera;
    }

    public void setId_cabecera(Integer id_cabecera) {
        this.id_cabecera = id_cabecera;
    }

    public Integer getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Integer id_usuario) {
        this.id_usuario = id_usuario;
    }

    public Integer getId_prestamo() {
        return id_prestamo;
    }

    public void setId_prestamo(Integer id_prestamo) {
        this.id_prestamo = id_prestamo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
    
    
    

}
