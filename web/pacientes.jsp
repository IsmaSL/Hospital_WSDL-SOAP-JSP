<%-- 
    Document   : pacientes
    Created on : 19/05/2020, 02:44:20 PM
    Author     : Isma
--%>
<jsp:include page="layouts/cabecera.jsp" />
<jsp:include page="layouts/menu.jsp" />
    <div id="texto1">
        <h1><a href="index.jsp" title="Regresar"><i class="fas fa-arrow-circle-left fa-lg cyan-text"></i></a> Lista de Pacientes</h1>
        <p>
            A continuación se muestras todos los pacientes del hospital. Si se quiere filtrar la informacion por <b>Municpios</b> se debe
            escribir en el formulario. Sólo se cuenta con pacientes provenientes de <b>Orizaba</b>, <b>Cordoba</b> y <b>Rio Blanco.</b>
        </p>
    </div>
    <form id="formBusq" class="form-inline" method="POST" action="filtro.jsp">
            <div class="md-form">
                <h5 class="mr-sm-4"><b>Filtrar por Ciudad:</b></h5>
            </div>
            <div class="md-form">
                <input type="text" id="materialRegisterFormFirstName" class="form-control mr-sm-3" name="cd" required>
                <label for="materialRegisterFormFirstName">Ciudad...</label>
            </div>
            <div class="md-form">
                <button type="submit" class="btn btn-success"><i class="fas fa-search fa-lg"></i></button>     
            </div>
    </form>
<%
    try {
        www.cliente.Hospital.ServHosp service = new www.cliente.Hospital.ServHosp();
	www.cliente.Hospital.ServHospPortType port = service.getServHospPort();
        // TODO initialize WS operation arguments here
        // TODO process result here
        www.cliente.Hospital.ArrPacientes result = port.obtenerPacientes();
%>
    <div id="tabla">
        <table class="table" id="tbl-cons">
            <thead class="elegant-color white-text">
                <tr>
                    <th scope="col">No. Expediente</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellidos</th>
                    <th scope="col">Direccion</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">Ciudad</th>
                    <th scope="col">Detalles</th>
                </tr>
            </thead>
            <tbody>
<%
            for (int i = 0; i < result.getItem().size(); i++) {
                out.println("<tr>");
                out.println("<td><b>" + result.getItem().get(i).getNoExp() + "</b></td>");
                out.println("<td>" + result.getItem().get(i).getNombre() + "</td>");
                out.println("<td><b>" + result.getItem().get(i).getApellidos() + "</b></td>");
                out.println("<td>" + result.getItem().get(i).getDireccion() + "</td>");
                out.println("<td><b>" + result.getItem().get(i).getTelefono() + "</b></td>");
                out.println("<td>" + result.getItem().get(i).getCiudad() + "</td>");
                out.println("<td>"+
                                "<a href=historial.jsp?noExp=" + result.getItem().get(i).getNoExp() +">"+
                                    "<i class=\"fas fa-notes-medical fa-2x green-text\"></i>"+
                                "</a>"+
                            "</td>");
                out.println("<tr>");
            }
%>
            </tbody>
        </table>
    </div>
<%
    }catch(Exception e){
%>
        <div class="alert alert-danger" id="alertOk"  role="alert">"+
            <h4 class="alert-heading">¡Error!</h4>"+
            <p><b>Error:</b> <% out.print(""+e); %></p>
            <p>No ha sido posible realizar la acción.</p>"+
            <hr>
            <p class="mb-0">
                Para regresar a la página anterior de <a href="index.jsp" class="alert-link">click aquí</a>.
                O espere 5 segundos.
            </p>
        </div>
        <script>
                setTimeout(function(){
                    window.location.href = "index.jsp";
                }, 6 * 1000);
        </script>
<%
    }
%>
<jsp:include page="layouts/pie.jsp" />