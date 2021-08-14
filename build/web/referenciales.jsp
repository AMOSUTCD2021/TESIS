<%-- 
    Document   : referenciales.jsp
    Created on : 07/06/2021, 02:07:25 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Archivos referenciales</title>
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
                color: white;

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
                margin-top:-3px;    
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


            .input-icons i {
                position: absolute;
            }

            .input-icons {
                width: 100%;
                margin-bottom: 10px;
            }

            .icon {
                padding: 10px;
                min-width: 40px;
            }



            --></style>
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <%-- NUEVO MENÚ--%>
        <div>
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <ul class="nav navbar-nav">
                    <form action="pais.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="País">
                        </li>
                    </form>
                    <form action="departamento.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Departamento">
                        </li>
                    </form>
                    <form action="ciudad.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Ciudad">
                        </li>
                    </form>
                    <form action="barrio.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Barrio">
                        </li>
                    </form>
                    <form action="funcionario.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Funcionario">
                        </li>
                    </form>
                    <form action="proveedor.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Proveedor">
                        </li>
                    </form>
                    <form action="cliente.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Cliente">
                        </li>
                    </form>
                    <form action="tipo_de_pago.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Tipo de Pago">
                        </li>
                    </form>
                    <form action="forma_cobro.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Forma de Cobro">
                        </li>
                    </form>
                    <form action="caja.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Caja">
                        </li>
                    </form>
                    <form action="tipo_servicio.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Tipo de Servicio">
                        </li>
                    </form>
                    <form action="moneda.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Moneda">
                        </li>
                    </form>
                    <form action="impuesto.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Impuesto">
                        </li>
                    </form>
                </ul>
                <%--TABULACIÓN--%>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                <%--TABULACIÓN--%>
                <a class="btn btn-light action-button" role="button" href="Principal.jsp">Atrás</a>
            </nav>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
        <%--NUEVO MENÚ--%>
        <div class="brand_logo_container">
            <img src="https://omni.com.py/img/logo.png" width="300" height="300" class="brand_logo" alt="Logo">
        </div>
    </body>
</html>
