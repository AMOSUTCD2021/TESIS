/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;


/**
 *
 * @author Alvaro
 */
public class LeeArchivo {
    
    private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList <Pago> pagos = new ArrayList<Pago>();

    public static ArrayList <Pago> leePagos(String path) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            //public pago(String fecha_pago, Integer nro_cuota_pagada, String monto_pagado, String interes_pagado, Integer id_cabecera, Integer id_usuario, Integer id_prestamo, String estado)
            String fecha_pago;
            Integer nro_cuota_pagada;
            String monto_pagado;
            String interes_pagado;
            Integer id_cabecera;
            Integer id_usuario;
            Integer id_prestamo;
            String estado;
            Pago pago;
            linea = br.readLine();

            while (linea != null) {
                tokensLinea = linea.split(",");
                fecha_pago = tokensLinea[0];
                nro_cuota_pagada = Integer.parseInt(tokensLinea[1]);
                monto_pagado = tokensLinea[2];
                interes_pagado = tokensLinea[3];
                id_cabecera = Integer.parseInt(tokensLinea[4]);
                id_usuario = Integer.parseInt(tokensLinea[5]);
                id_prestamo = Integer.parseInt(tokensLinea[6]);
                estado = tokensLinea[7];
                pago = new Pago(fecha_pago, nro_cuota_pagada, monto_pagado, interes_pagado, id_cabecera, id_usuario,id_prestamo,estado);
                pagos.add(pago);
                cont++;
                linea = br.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return pagos;
    }

    public static int getCont() {
        return cont;
    }

    public static void clearCont() {
        cont = 0;
    }
}
