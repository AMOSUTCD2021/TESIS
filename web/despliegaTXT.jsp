<%-- 
    Document   : despliegaTXT
    Created on : 13/08/2020, 09:04:49 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                margin-top:0px;    
                margin-bottom:0px;
            }

            .themeBtn {
                background: #ff5c00;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 30px;
                line-height: 0.8;
                padding: 10px 20px;
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
                background: #0f8515;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 350;
                height: 30px;
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
        <%@ page import="model.Pago, java.util.ArrayList"  %>
        <h2> Los pagos registrados son: </h2>
        <br>
        <%
            ArrayList<Pago> pagos = null;
            pagos = (ArrayList<Pago>) request.getAttribute("Pagos");
            String numReg = (String) request.getAttribute("contador");
            int numRegistros = Integer.parseInt(numReg);
        %>

        <div class="container">
            <div class="row">

                <div class="col-md-9">
                    <table class="table table-list-search">
                        <thead>
                            <tr>
                                <th class="text-center">Fecha de pago</th>
                                <th class="text-center">Nro de cuota</th>              
                                <th class="text-center">Monto pagado</th>
                                <th class="text-center">Interes pagado</th>
                                <th class="text-center">Identificador</th>
                                <th class="text-center">Usuario</th>                
                                <th class="text-center">Nro de prestamo</th>
                                <th class="text-center">Estado</th>

                                <th>      </th>
                            </tr>
                            <%
                                for (Pago pago : pagos) {
                            %>
                        </thead>
                        <tbody>
                            <tr valign="top">
                                <td class="text-center"> <%= pago.getFecha_pago()%></td>
                                <td class="text-center"> <%= pago.getNro_cuota_pagada()%></td>
                                <td class="text-center"> <%= pago.getMonto_pagado()%></td>
                                <td class="text-center"> <%= pago.getInteres_pagado()%></td>
                                <td class="text-center"> <%= pago.getId_cabecera()%></td>
                                <td class="text-center"> <%= pago.getId_usuario()%></td>
                                <td class="text-center"> <%= pago.getId_prestamo()%></td>
                                <td class="text-center"> <%= pago.getEstado()%></td>
                            </tr>
                            <% } %>
                            <% pagos.clear();%>
                    </table>
                    <p>Numero de registros : <%= numRegistros%></p>
                    <br>    
                    <form action="Principal.jsp" method="post">
                        <div class="container-fluid margin">
                            <input type="submit" target="_blank" class="themeBtn4" value="Regresar">
                        </div>
                    </form>

                    </tbody>
                    </table>   
                </div>
            </div>
        </div>

    </body>
</html>
