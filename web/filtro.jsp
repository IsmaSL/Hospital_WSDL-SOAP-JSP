<%-- 
    Document   : filtro
    Created on : 19/05/2020, 03:44:16 PM
    Author     : Isma
--%>

<jsp:include page="layouts/cabecera.jsp" />
<jsp:include page="layouts/menu.jsp" />
<%
    String cd = request.getParameter("cd");
%>
    <div id="texto1">
        <h1>
            <a href="pacientes.jsp" title="Regresar"><i class="fas fa-arrow-circle-left fa-lg cyan-text"></i></a> Resultados del filtro
        </h1>
        <p>
            Estos son los pacientes provenientes de <b><% out.print(cd); %></b>.
        </p>
    </div>
<%
    try {
        www.cliente.Hospital.ServHosp service = new www.cliente.Hospital.ServHosp();
	www.cliente.Hospital.ServHospPortType port = service.getServHospPort();
        // TODO initialize WS operation arguments here
        java.lang.String ciudad = cd;
        // TODO process result here
        www.cliente.Hospital.ArrPacientes result = port.pacPorCiudad(ciudad);
        
        if(result.getItem().size()>0){
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
                                "<a href=historial.jsp?noExp=" + result.getItem().get(i).getNoExp() + ">"+
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
        }else{
%>
        <div class="alert alert-danger" id="alertOk"  role="alert">
            <h4 class="alert-heading">¡Pacientes no encontrados!</h4>
            <p><b>Error:</b> No ha sido posible encontrar pacientes que provengan de la ciudad indicada.</p>
            <hr>
            <p class="mb-0">
                Para regresar a la página anterior de <a href="pacientes.jsp" class="alert-link">click aquí</a>.
                O espere 5 segundos.
            </p>
        </div>
        <script>
                setTimeout(function(){
                    window.location.href = "pacientes.jsp";
                }, 6 * 1000);
        </script>
<%
        }
    }catch(Exception e){
%>
        <div class="alert alert-danger" id="alertOk"  role="alert">
            <h4 class="alert-heading">¡Error!</h4>
            <p><b>Error:</b> <% out.print(""+e); %></p>
            <p>No ha sido posible realizar la acción.</p>
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