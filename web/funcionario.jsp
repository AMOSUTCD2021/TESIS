<%-- 
    Document   : funcionario.jsp
    Created on : 07/06/2021, 03:50:11 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Barrio"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Funcionario</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link rel="stylesheet" href="css/estiloformulario.css">
    </head>
    <style>
        .payment-form{
            padding-bottom: 50px;
            font-family: 'Montserrat', sans-serif;
        }

        .payment-form.dark{

        }
        .payment-form .content{
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
            background-color: white;
        }

        .payment-form .block-heading{
            padding-top: 50px;
            margin-bottom: 40px;
            text-align: center;
        }

        .payment-form .block-heading p{
            text-align: center;
            max-width: 420px;
            margin: auto;
            opacity:0.7;
        }

        .payment-form.dark .block-heading p{
            opacity:0.8;
            color: #ffffff;
        }

        .payment-form .block-heading h1,
        .payment-form .block-heading h2,
        .payment-form .block-heading h3 {
            margin-bottom:1.2rem;
            color: #ffffff;
        }

        .payment-form form{
            border-top: 2px solid #ffffff;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
            background-color: #e9e9e9;
            padding: 0;
            max-width: 800px;
            margin: auto;
        }

        .payment-form .title{
            font-size: 1em;
            border-bottom: 1px solid rgba(0,0,0,0.1);
            margin-bottom: 0.8em;
            font-weight: 600;
            padding-bottom: 8px;
        }

        .payment-form .products{
            background-color: #f7fbff;
            padding: 25px;
        }

        .payment-form .products .item{
            margin-bottom:1em;
        }

        .payment-form .products .item-name{
            font-weight:600;
            font-size: 0.9em;
        }

        .payment-form .products .item-description{
            font-size:0.8em;
            opacity:0.6;
        }

        .payment-form .products .item p{
            margin-bottom:0.2em;
        }

        .payment-form .products .price{
            float: right;
            font-weight: 600;
            font-size: 0.9em;
        }

        .payment-form .products .total{
            border-top: 1px solid rgba(0, 0, 0, 0.1);
            margin-top: 10px;
            padding-top: 19px;
            font-weight: 600;
            line-height: 1;
        }

        .payment-form .card-details{
            padding: 25px 25px 15px;
        }

        .payment-form .card-details label{
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 15px;
            color: #722f37;
            text-transform: uppercase;
        }

        .payment-form .card-details button{
            margin-top: 0.6em;
            padding:12px 0;
            font-weight: 600;
        }

        .payment-form .date-separator{
            margin-left: 10px;
            margin-right: 10px;
            margin-top: 5px;
        }

        @media (min-width: 576px) {
            .payment-form .title {
                font-size: 1.2em; 
            }

            .payment-form .products {
                padding: 40px; 
            }

            .payment-form .products .item-name {
                font-size: 1em; 
            }

            .payment-form .products .price {
                font-size: 1em; 
            }

            .payment-form .card-details {
                padding: 40px 40px 30px; 
            }

            .payment-form .card-details button {
                margin-top: 2em; 
            } 
        }
        /*BOTON CHECKBOX*/
        .text-small {
            font-size: 0.9rem !important;
        }

        body {
            background: linear-gradient(to left, #56ab2f, #a8e063);
        }

        .cursor-pointer {
            cursor: pointer;
        }
        body {
            background-color: #808080;
            background-image: url("data:image/svg+xml,%3Csvg width='40' height='40' viewBox='0 0 40 40' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M20 20.5V18H0v-2h20v-2H0v-2h20v-2H0V8h20V6H0V4h20V2H0V0h22v20h2V0h2v20h2V0h2v20h2V0h2v20h2V0h2v20h2v2H20v-1.5zM0 20h2v20H0V20zm4 0h2v20H4V20zm4 0h2v20H8V20zm4 0h2v20h-2V20zm4 0h2v20h-2V20zm4 4h20v2H20v-2zm0 4h20v2H20v-2zm0 4h20v2H20v-2zm0 4h20v2H20v-2z' fill='%23722f37' fill-opacity='0.4' fill-rule='evenodd'/%3E%3C/svg%3E");
        }
    </style>
    <body>
        <main class="page payment-page">
            <section class="payment-form dark">
                <div class="container">
                    <div class="block-heading">
                        <h2>Funcionario</h2>
                        <p>Por favor, complete los campos</p>
                    </div>
                    <form action="funcionario" method="POST">
                        <div class="card-details">
                            <h3 class="title">Detalles del Funcionario</h3>
                            <div class="row">
                                <%-- Campo para completar--%>
                                <div class="form-group col-sm-12"> <%-- agregar espacio entre los labels &nbsp --%>
                                    <div class="input-group">
                                        <label for="card-holder">Nombre</label>
                                        &nbsp;&nbsp;&nbsp;<input id="card-holder" type="text" name="nombretxt" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        &nbsp;&nbsp;&nbsp;<label for="card-holder">Apellido</label>
                                        &nbsp;&nbsp;&nbsp;<input id="card-holder" type="text" name="apellidotxt" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>
                                <div class="form-group col-sm-12"> <%-- agregar espacio entre los labels &nbsp --%>
                                    <div class="input-group">
                                        <label for="card-holder">Cédula de Identidad</label>
                                        &nbsp;&nbsp;&nbsp;<input id="card-holder" type="text" name="citxt" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        &nbsp;&nbsp;&nbsp;<label for="card-holder">Cargo</label>
                                        &nbsp;&nbsp;&nbsp;<input id="card-holder" type="text" name="cargotxt" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>
                                <div class="form-group col-sm-12"> <%-- agregar espacio entre los labels &nbsp --%>
                                    <div class="input-group">
                                        <label for="card-holder">Email</label>
                                        &nbsp;&nbsp;&nbsp;<input id="card-holder" type="text" name="emailtxt" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        &nbsp;&nbsp;&nbsp;<label for="card-holder">Teléfono</label>
                                        &nbsp;&nbsp;&nbsp;<input id="card-holder" type="text" name="teltxt" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>
                                <div class="form-group col-sm-12"> <%-- agregar espacio entre los labels &nbsp --%>
                                    <div class="input-group">
                                        <label for="card-holder">Dirección</label>
                                        &nbsp;&nbsp;&nbsp;<input id="card-holder" type="text" name="dirtxt" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>
                                <%--BOTON CHEKBOX PARA ESTADO--%>
                                <div class="form-group col-sm-12"> <%-- agregar espacio entre los labels &nbsp --%>
                                    <div class="input-group">
                                        <label for="card-holder">Estado</label>
                                        &nbsp;&nbsp;&nbsp;
                                        <ul class="list-group">
                                            <li class="list-group-item rounded-0 d-flex align-items-center justify-content-between">
                                                <div class="custom-control custom-radio">
                                                    <input class="custom-control-input" id="customRadio1" type="radio" name="customRadio" checked="true" value="activo">
                                                    <label class="custom-control-label" for="customRadio1">
                                                        <p class="mb-0">Activo</p>
                                                    </label>
                                                </div>
                                                <label for="customRadio1"><img src="https://res.cloudinary.com/mhmd/image/upload/v1579682182/2_rqo4zs.gif" alt="" width="60"></label>
                                            </li>
                                            <li class="list-group-item d-flex align-items-center justify-content-between">
                                                <div class="custom-control custom-radio">
                                                    <input class="custom-control-input" id="customRadio2" type="radio" name="customRadio"  value="inactivo">
                                                    <label class="custom-control-label" for="customRadio2">
                                                        <p class="mb-0">Inactivo</p>
                                                    </label>
                                                </div>
                                                <label for="customRadio2"><img src="https://res.cloudinary.com/mhmd/image/upload/v1579682182/1_ezgo0i.png" alt="" width="60"></label>
                                            </li>
                                        </ul>
                                        <%--BUSCADOR DEL BARRIO--%>
                                        <div class="form-group col-sm-7">
                                            <label for="card-holder">Barrio</label>
                                            <select id="drop_bar" name="drop_bar" class="form-control">
                                                <%
                                                    Barrio bar = new Barrio();
                                                    HashMap<String, String> drop = bar.seleccionarBarrio();
                                                    for (String i : drop.keySet()) {
                                                        out.println("<option value='" + i + "'>" + drop.get(i) + "</option>");
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <%--BOTONES--%>
                                <div>
                                    <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                                        <ul class="nav navbar-nav">

                                            <li class="dropdown">
                                                <input type="submit" name="accion" target="_blank" class="btn btn-light action-button" value="Guardar">
                                            </li>

                                            <li class="dropdown">
                                                <input type="submit" name="accion" target="_blank" class="btn btn-light action-button" value="Modificar">
                                            </li>

                                            <li class="dropdown">
                                                <input type="submit" name="accion" target="_blank" class="btn btn-light action-button" value="Estado">
                                            </li>
                                            <a class="btn btn-light action-button" role="button" href="referenciales.jsp">Atrás</a>
                                        </ul>
                                    </nav>
                                </div>
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </main>
        <div class="container mt-4">
            <h1>Bienvenido al sistema ......<strong> ${usuar}</strong></h1>
            
        </div>
           
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</html>
