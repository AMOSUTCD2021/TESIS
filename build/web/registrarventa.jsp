<%-- 
    Document   : ventas
    Created on : 17/06/2021, 04:43:10 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ventas</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link rel="stylesheet" href="css/estiloformulario.css">
    </head>
    <style>
        body {
            background-color: #808080;
            background-image: url("https://b21importexport.com/wp-content/uploads/2020/05/WhatsApp-Image-2020-05-14-at-13.01.16-1080x675.jpeg");
        }
    </style>
    <body>
        <main class="page payment-page">
            <section class="payment-form dark">
                <div class="container">
                    <div class="block-heading">
                        <h2>Registro de Ventas</h2>
                        <p>Por favor, complete los campos</p>
                    </div>
                    <form action="ventas" method="POST">
                        <div class="card-details">
                            <h3 class="title">Detalles de la venta</h3>
                            <div class="row">
                                <%-- Campo para completar--%>

                                <%--
                                <div class="form-row">
                                    <div class="col">
                                        <input type="text" class="form-control" placeholder="First name">
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" placeholder="Last name">
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" placeholder="First name">
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" placeholder="Last name">
                                    </div>
                                </div>
                                
                                --%>

                                <div class="form-group col-sm-12"> <%-- agregar espacio entre los labels &nbsp --%>
                                    <label for="card-holder">Número de factura</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp  <label for="card-holder">Condición de venta</label>
                                    <div class="input-group">
                                        <input id="card-holder" type="text" name="numerofacttxt" class="form-control" placeholder="Número factura" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="condicionventatxt" class="form-control" placeholder="Condición de venta" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">
                                    <label for="card-holder">Fecha de venta</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp   <label for="card-holder">Fecha de facturación</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="fechaventattxt" class="form-control" placeholder="Fecha de venta" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input   id="card-holder" type="text" name="fechafacturatxt" class="form-control" placeholder="Fecha de facturación" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>                           

                                <div class="form-group col-sm-12">                               
                                    <label for="card-holder">Nota de remisión </label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp <label for="card-holder">Timbrado</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="notaremisiontxt" class="form-control" placeholder="Nota de remisión" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="timbradotxt" class="form-control" placeholder="Timbrado" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Total venta </label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">IVA</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="totalventatxt" class="form-control" placeholder="Total de venta" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="totalivatxt" class="form-control" placeholder="IVA" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                               
                                    <label for="card-holder">Estado</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp &nbsp <label for="card-holder"> Moneda </label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="estadofacttxt" class="form-control" placeholder="Estado de venta" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="monedatxt" class="form-control" placeholder="Moneda" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                               
                                    <label for="card-holder">Cargado por </label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp  <label for="card-holder">Fecha</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="usuariocargatxt" class="form-control" placeholder="Quien cargó" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="fechacargatxt" class="form-control" placeholder="Fecha de carga" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Cliente</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">Contrato</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="clientetxt" class="form-control" placeholder="Cliente" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="contratotxt" class="form-control" placeholder="Contrato" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Tipo de pago</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">Código venta</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="tipopagotxt" class="form-control" placeholder="Tipo de pago" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="codigoventatxt" class="form-control" placeholder="Código de venta" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Cantidad</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">Descripción</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="cantidadtxt" class="form-control" placeholder="Cantidad" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="descripciontxt" class="form-control" placeholder="Descripción" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Precio unitario</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">Excentas</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="preciounitxt" class="form-control" placeholder="Precio unitario" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="excentastxt" class="form-control" placeholder="Excentas" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Liquidación iva 5%</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">Liquidación iva 10%</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="iva5txt" class="form-control" placeholder="IVA 5%" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="iva10txt" class="form-control" placeholder="IVA 10%" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Sub-total</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">Total a pagar</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="subtotaltxt" class="form-control" placeholder="Sub-total" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="totalapagartxt" class="form-control" placeholder="Total a pagar" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Tipo de pago</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">%%%%%</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="tipopagotxt" class="form-control" placeholder="Tipo de pago" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="%%%%" class="form-control" placeholder="ALgo mas" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>


                                <%--Botones--%>
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
                                            <a class="btn btn-light action-button" role="button" href="ventas.jsp">Salir</a>
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
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</html>

