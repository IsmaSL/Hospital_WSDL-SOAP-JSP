<%-- 
    Document   : index
    Created on : 19/05/2020, 12:54:41 AM
    Author     : Isma
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layouts/cabecera.jsp" />
<jsp:include page="layouts/menu.jsp" />
<div class="py-2">
    <section>
        <div class="card-body mb-4">
            <div class="row">
                <div class="col-md-6">
                    <img src="https://mdbootstrap.com/img/Photos/Others/project4.jpg" class="img-fluid" alt="Sample project image">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <div class="col-md-6 align-self-center">
                    <h5 class="font-weight-normal mb-3">Detalles del Proyecto</h5>
                    <p class="text-muted">
                        Este es el proyecto de <b>Servicios Web</b> realizado por un estudiante del <b>Instituto Tecnológico de Orizaba</b>, 
                        donde se aplican los conocimientos necesarios para hacer consumo de distintos Servicios Web y aplicarlo a una
                        aplicación web (basada en java).
                    </p>
                    <ul class="list-unstyled font-small mt-4 mb-0">
                        <li>
                            <p class="text-uppercase mb-2"><strong>Materia</strong></p>
                            <p class="text-muted mb-4">Ingeniería de Software para la Web</p>
                        </li>
                        <li>
                            <p class="text-uppercase mb-2"><strong>Fecha</strong></p>
                            <p class="text-muted mb-4">Mayo 20, 2020</p> 
                        </li>
                        <li>
                            <p class="text-uppercase mb-2"><strong>Herramientas</strong></p>
                            <p class="text-muted mb-4">HTML, CSS, Java, Javascript, WSDL</p>
                        </li>
                        <li>
                            <p class="text-uppercase mb-2"><strong>Integrantes</strong></p>
                            <p class="text-muted mb-4">Ismael Santarrosa López</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="layouts/pie.jsp" />