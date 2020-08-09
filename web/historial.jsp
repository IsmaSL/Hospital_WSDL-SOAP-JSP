<%-- 
    Document   : historial
    Created on : 19/05/2020, 03:06:54 PM
    Author     : Isma
--%>

<jsp:include page="layouts/cabecera.jsp" />
<jsp:include page="layouts/menu.jsp" />
    <div id="texto1">
        <h1><a href="pacientes.jsp" title="Regresar"><i class="fas fa-arrow-circle-left fa-lg cyan-text"></i></a> Historial Clínico</h1>
        <p>
            Aquí se encontraran las visitas realizadas por el paciente, ademas de la información de su médico familiar.
        </p>
    </div>
<%
    try {
        String exp = request.getParameter("noExp");
        String nex="", nom="", con="", pis="", med="", esp="";
        www.cliente.Hospital.ServHosp service = new www.cliente.Hospital.ServHosp();
	www.cliente.Hospital.ServHospPortType port = service.getServHospPort();
        // TODO initialize WS operation arguments here
	java.lang.String noExp = exp;
        // TODO process result here
        www.cliente.Hospital.ArrConsultas result = port.obtenerDetalles(noExp);
%>
    <div id="tabla">
<%
        for (int i = 0; i < result.getItem().size(); i++) {
            nex = result.getItem().get(i).getNoExp();
            nom = result.getItem().get(i).getNombre() + " " + result.getItem().get(i).getApellidos();
            con = result.getItem().get(i).getConsultorio();
            pis = result.getItem().get(i).getNoPiso();
            med = result.getItem().get(i).getMedico();
            esp = result.getItem().get(i).getEspecialidad();
        }
%>
        <table class="table" id="tbl-detail">
            <thead class="elegant-color white-text">
                <tr>
                    <th scope="col">No. Expediente</th>
                    <th scope="col">Nombre Completo</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><b><% out.println(nex); %></b></td>
                    <td><b><% out.println(nom); %></b></td>
                </tr>
            </tbody>
        </table>
        <!---->      
        <table class="table" id="tbl-detail">
            <thead class="elegant-color white-text">
                <tr>
                    <th scope="col">Consultorio</th>
                    <th scope="col">Piso</th>
                    <th scope="col">Médico</th>
                    <th scope="col">Especialidad</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><b><% out.println(con); %></b></td>
                    <td><b><% out.println(pis); %></b></td>
                    <td><b><% out.println(med); %></b></td>
                    <td><b><% out.println(esp); %></b></td>
                </tr>
            </tbody>
        </table>
        <!---->
        <table class="table" id="tbl-detail">
            <thead class="elegant-color white-text">
                <tr>
                    <th scope="col">Fecha de Consulta</th>
                    <th scope="col">Observaciones</th>
                </tr>
            </thead>
            <tbody>
<%
            for (int i = 0; i < result.getItem().size(); i++) {
                out.println("<tr>");
                out.println("<td><b>" + result.getItem().get(i).getFecCon() + "</b></td>");
                out.println("<td><b>" + result.getItem().get(i).getObservacion() + "</b></td>");
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
                Para regresar a la página anterior de <a href="pacientes.jsp" class="alert-link">click aquí</a>.
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