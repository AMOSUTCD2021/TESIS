<%-- 
    Document   : listaPrestamos
    Created on : 27/07/2020, 03:52:23 PM
    Author     : Alvaro
--%>

<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Prestamos Registrados </title>
        <STYLE TYPE="text/css" MEDIA=screen>
            <!-- 
            body{
                background-image: url('https://cdn.hipwallpaper.com/m/92/92/QObTSr.png');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                font-family: 'Numans', sans-serif;
                color: white;
            }
            
            .margin{
                margin-top:-2px;    
                margin-bottom:0px;
            }

            .themeBtn {
                background: #ff5c00;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 50px;
                line-height: 0.8;
                padding: 18px 30px;
                text-transform: capitalize;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:100px;

            }
            a:hover{
                color: #ffffff;
                text-decoration:none;
            }
            .themeBtn:hover {
                background: rgb(255, 92, 0);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(255, 92, 0, 0.6);
            }
            .themeBtn2 {
                background: #7600ff;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 50px;
                line-height: 0.8;
                padding: 18px 30px;
                text-transform: capitalize;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:100px;

            }
            .themeBtn2:hover {
                background: rgb(118, 0, 255);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(118, 0, 255, 0.6);
            }
            .themeBtn3 {
                background: #3886c2;
                color: #ffffff !important;
                display: inline-block;
                font-size: 12px;
                font-weight: 350;
                height: 25px;
                line-height: 0.8;
                padding: 10px 20px;
                text-transform: capitalize;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:80px;

            }
            .themeBtn3:hover {
                background: rgb(255, 46, 77);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(255, 46, 77, 0.6);
            }
            .themeBtn4 {
                background: #006eff;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 30px;
                line-height: 0.8;
                padding: 10px 20px;
                text-transform: fullwidth;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:100px;

            }
            .themeBtn4:hover {
                background: rgb(0, 110, 255);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(0, 110, 255, 0.6);
            }

            --></style>
    </head>
    <body>
        <%@ page import="model.Prestamo, java.util.ArrayList"  %>
        <h2 >  Las cuotas del prestamo seleccionado son: </h2>
        <br>
        <%
            ArrayList<Prestamo> prestamos = null;
            prestamos = (ArrayList<Prestamo>) request.getAttribute("Prestamo");
            //String numReg = (String)request.getAttribute("contador");
            int numRegistros = prestamos.size();
        %>

        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <table class="table table-list-search">
                        <thead>
                            <tr>
                                <th class="text-center">Nro de préstamo</th>
                                <th class="text-center">Monto</th>              
                                <th class="text-center">Nro Cuota</th>
                                <th class="text-center">Interes</th>
                                <th class="text-center">Importe cuota</th>
                                <th class="text-center">Amortizacion</th>                
                                <th class="text-center">Fecha Vencimiento</th>
                                <th class="text-center">Saldo Capital</th>
                                <th class="text-center">Estado</th>
                                <th class="text-center">Fecha Actual</th>
                                <th class="text-center">Usuario</th>
                                <th>      </th>
                            </tr>

                            <%
                                for (Prestamo prestamo : prestamos) {
                            %>
                        </thead>
                        <tbody>
                            <tr>
                            <tr valign="top">
                                <td class="text-center"> <%= prestamo.getCodigo()%></td>
                                <td class="text-center"> <%= prestamo.getMonto_prestamo()%></td>
                                <td class="text-center"> <%= prestamo.getNro_cuota()%></td>                
                                <td class="text-center"> <%= prestamo.getInteres()%></td>
                                <td class="text-center"> <%= prestamo.getImporte_cuota()%></td>
                                <td class="text-center"> <%= prestamo.getAmortizacion()%></td>
                                <td class="text-center"> <%= prestamo.getFecha_vencimiento()%></td>
                                <td class="text-center"> <%= prestamo.getSaldo_capital()%></td>
                                <td class="text-center"> <%= prestamo.getEstado()%></td> 
                                <td class="text-center"> 
                                    <script>
                                        var f = new Date();
                                        document.write(f.getDate() + "/" + (f.getMonth() + 1) + "/" + f.getFullYear());
                                    </script></td> 
                                <td class="text-center"> <%= Variables.id%></td> 
                                <td class="text-center">
                                    <form action="realizarPago" method="POST">
                                        <input type="hidden" name="codigo" value="<%= prestamo.getCodigo()%>"> 
                                        <input type="hidden" name="monto" value="<%= prestamo.getMonto_prestamo()%>">
                                        <input type="hidden" name="cuota" value="<%= prestamo.getNro_cuota()%>">
                                        <input type="hidden" name="interes" value="<%= prestamo.getInteres()%>"> 
                                        <input type="hidden" name="importe" value="<%= prestamo.getImporte_cuota()%>">                                         
                                        <input type="hidden" name="cabecera" value="<%= prestamo.getCodigo()%>">
                                        <input type="hidden" name="usuario" value="<%= Variables.id%>">
                                        <input type="hidden" name="estado" value="<%= prestamo.getEstado()%>">

                                        <div class="container-fluid margin">
                                            <input type="submit" target="_blank" class="themeBtn3" value="Pagar">
                                        </div>
                                    </form>
                                </td>
                            </tr>

                            <% } %>
                            <% prestamos.clear();%>
                    </table>
                    <p>Numero de registros : <%= numRegistros%></p>
                    <br>
                    <form action="Principal.jsp" method="post">
                        <div class="container-fluid margin">
                            <input type="submit" target="_blank" class="themeBtn4" value="Regresar">
                        </div>
                    </form>
                    </tbody>                          
                </div>
            </div>
        </div>
    </body>
</html>
