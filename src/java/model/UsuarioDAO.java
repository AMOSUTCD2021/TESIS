package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alvaro
 */
public class UsuarioDAO implements Validar {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    

    @Override
    public int validar(Usuario u) {
        int r = 0;
         String sql = "Select * from usuario \n"
                + "where nombre_usuario=? and clave_usuario=?";
         
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, u.getNombre_usuario());
            ps.setString(2, u.getClave_usuario());
          //  ps.setString(3, u.getEstado());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                
               //Variables.id = Integer.parseInt(rs.getString("id_usuario"));
                
                u.setNombre_usuario(rs.getString("nombre_usuario"));
                u.setClave_usuario(rs.getString("clave_usuario"));
                //u.setEstado(rs.getString("estado")); capturar estado o su id y almacenar en variable publica para comparar y enviar al controlador a condicion IF antes de abrir el principal.jsp
                // chequar http://es.uwenku.com/question/p-sfbqsryr-bp.html para habilitacion de botones de acuerdo al perfil.
            }
            if (r == 1) {
                return 1;
            } else {
                System.out.println("No se encontro el registro");
                return 0;
            }

        } catch (Exception e) {
            return 0;
        }
        
    }

    
    
    
    

}
