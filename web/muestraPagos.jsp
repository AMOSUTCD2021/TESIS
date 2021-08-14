<%-- 
    Document   : muestraPagos
    Created on : 14/08/2020, 01:38:26 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="model.Pago" %>
        <% 
            Pago pago = (Pago) request.getAttribute("atribPago");
        %>

        <h1>MuestraDatos.jsp</h1>
        <h2>Aqui se desplegan los datos que envió el servlet</h2>
        <p>Tus datos son los siguientes: </p>
         <p>Se guardaron los siguientes datos: </p>   
             <table cellspacing="3" cellpadding="3" border="1">
                 
                <tr>
                    <td align="right"> Fecha de pago: </td>
                    <td><%= pago.getFecha_pago()%> </td>                    
                </tr>    
                <tr>
                    <td align="right"> Nro de cuota: </td>
                    <td><%= pago.getNro_cuota_pagada()%> </td> 
                </tr> 
                <tr>
                    <td align="right"> Monto pagado: </td>
                    <td><%= pago.getMonto_pagado()%> </td> 
                </tr> 
                <tr>
                    <td align="right"> Interes pagado: </td>
                    <td><%= pago.getInteres_pagado()%> </td> 
                </tr> 
                <tr>
                    <td align="right"> Codigo: </td>
                    <td><%= pago.getId_cabecera()%> </td> 
                </tr> 
                <tr>
                    <td align="right"> Usuario: </td>
                    <td><%= pago.getId_usuario()%> </td> 
                </tr> 
                <tr>
                    <td align="right"> Cabecera: </td>
                    <td><%= pago.getId_prestamo()%> </td> 
                </tr> 
                <tr>
                    <td align="right"> Estado: </td>
                    <td><%= pago.getEstado()%> </td> 
                </tr> 
            </table>
            <form action="Principal.jsp" method="post">
            <input type="submit" value="Regresar">
        </form>
        </form>
    
        <h1>Hello World!</h1>
    </body>
</html>
