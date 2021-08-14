/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Alvaro
 */
public class Guardarpago {
    
    public static void add(Pago a, String path) throws IOException {
        File archivo;
        FileWriter fw = null;
        PrintWriter pw = null;
        try {
            archivo = new File(path);
            fw = new FileWriter(archivo, true);
            pw = new PrintWriter(fw);
            //public pago(String fecha_pago, Integer nro_cuota_pagada, String monto_pagado, String interes_pagado, Integer id_cabecera, Integer id_usuario, Integer id_prestamo, String estado) {
            pw.println(a.getFecha_pago() + "," + a.getNro_cuota_pagada() + "," + a.getMonto_pagado().trim() +"," + a.getInteres_pagado().trim()+ "," + a.getId_cabecera() +"," + a.getId_usuario()+ "," + a.getId_prestamo()+ ",Pagado");
        } finally {
            try {
                if (pw != null) {
                    pw.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
    
    
}
