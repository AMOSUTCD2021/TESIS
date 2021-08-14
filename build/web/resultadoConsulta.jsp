<%-- 
    Document   : resultadoConsulta
    Created on : 27/07/2020, 03:05:16 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos del prestamo consultado </title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <STYLE TYPE="text/css" MEDIA=screen>
            <!-- 
            html,body{
                background-image: url('https://cdn.hipwallpaper.com/m/62/20/4rKTDz.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                font-family: 'Numans', sans-serif;
                color: green;

                .custab{
                    border: 1px solid #ccc;
                    padding: 5px;
                    margin: 5% 0;
                    box-shadow: 3px 3px 2px #ccc;
                    transition: 0.5s;
                }
                .custab:hover{
                    box-shadow: 3px 3px 0px transparent;
                    transition: 0.5s;
                }
            }

            .margin{
                margin-top:-5px;    
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
                font-size: 12px;
                font-weight: 500;
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

        <%@ page import="model.Prestamo, java.util.ArrayList"  %>
        <%
            ArrayList<Prestamo> prestamos = null;
            prestamos = (ArrayList<Prestamo>) request.getAttribute("Prestamo");
        %>

        <h2>Resultado de la consulta: </h2>



        <div class="container">
            <div class="row col-md-6 col-md-offset-2 custyle">
                <table class="table table-striped custab">

                    <%
                        for (Prestamo prestamo : prestamos) {
                    %>
                    <thead>

                        <tr>
                            <th class="text-center">Nro de prestamo:</th>
                            <th class="text-center">Monto:</th>
                            <th class="text-center">Cuotas:</th>
                            <th class="text-center">Fecha de emision:</th>
                            <th class="text-center">Porcentaje de interes:</th>
                            <th class="text-center">Método:</th>
                            <th class="text-center">Acción</th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="text-center"><%= prestamo.getCodigo()%> 
                        <td class="text-center"><%= prestamo.getMonto_prestamo()%> </td>
                        <td class="text-center"><%= prestamo.getCant_cuotas()%> </td> 
                        <td class="text-center"><%= prestamo.getFecha_prestamo()%> </td> 
                        <td class="text-center"><%= prestamo.getPorcentaje_interes()%> </td> 
                        <td class="text-center"><%= prestamo.getMetodo()%> </td> 
                        <td class="text-center">
                            <form action="muestraPrestamo" method="POST">
                                <input type="hidden" name="codigo" value="<%= prestamo.getCodigo()%>"> 
                                <div class="container-fluid margin">
                                    <input type="submit" target="_blank" class="themeBtn3" value="Ver cuotas">
                                </div>
                                
                            </form>
                        </td>

                    </tr>
                    <% } %>
                    <% prestamos.clear();%>

                </table>

                <br>
                <form action="consultaPrest.jsp" method="POST">
                    <div class="container-fluid margin">
                        <input type="submit" target="_blank" class="themeBtn4" value="Regresar">
                    </div>

                </form>
            </div>
        </div>

    </body>


</html>
