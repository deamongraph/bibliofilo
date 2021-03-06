<%@ include file="template/header.jsp" %>

<%
    Float sueldo = Float.valueOf((String) session.getAttribute("sueldo"));
    Float extra = (sueldo * 20) / 100;
%>
<div class="row">
    <div class=" panel panel-primary">
        <div class="panel-heading">Consulte sus libros:</div>
        <div class="panel-group panel-body">

            <form class="form-horizontal" action="./show.jsp" method="POST">

                <fieldset>


                    <div class="col-md-2">
                        <span>Sueldo: <h1><%=sueldo%></h1></span>
                        <span>Sueldo 20%: <h1><%=extra%></h1></span>                     
                    </div>
                    <div class="col-lg-4">


                        <div class="form-group">
                            <label for="sueldo" class="col-lg-4 control-label">Nombre del Autor:</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="autor" name="autor" placeholder="EX: Tom McCarthy  " required>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sueldo" class="col-lg-4 control-label">Precio Menor: </label>
                            <div class="col-md-6">
                                <input type="number" class="form-control" id="autor" name="preciomenor"    required>

                            </div>
                        </div>

                        <div class="form-group">
                            <label for="sueldo" class="col-lg-4 control-label">Precio Mayor: </label>
                            <div class="col-md-6">
                                <input type="number" class="form-control" id="autor" name="preciomayor"   required>

                            </div>
                        </div>
                        <div class="col-md-8">
                            <input type="text" id="opcion" name="opcion" value="8" hidden="true" >
                            <button class="btn btn-default "type="reset">Limpiar</button>
                            <button type="submit" class="btn btn-primary btn-lg">Aceptar <span class="glyphicon glyphicon-floppy-saved"></span></button>

                        </div>
                    </div>


                </fieldset>
            </form>
        </div>

    </div>



</div>



<%@ include file="template/footer.jsp"%>