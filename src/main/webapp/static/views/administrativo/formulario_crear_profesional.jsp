<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:include page="../componentes/head.jsp"/>
    <title>Gestion Usuarios</title>
  </head>

  <body>
    <%
      if (session.getAttribute("usuario") == null) {
        response.sendRedirect("login");
      }
    %>

    <div class="container">
      <jsp:include page="../componentes/admin_navbar.jsp"/>

      <main class="main" id="blur">

        <c:if test="${op == 'nuevoP'}">
        <h2>Ingresar Nuevo Profesional</h2>
        <h3 class="subtitle">Complete la informacion para ingresar el nuevo Profesional.</h3>
        <form class="formulario" action="gestionusuarios?op=addP" method="post">
          </c:if>

          <c:if test="${op == 'edit'}">
          <h2>Editar Profesional</h2>
          <h3 class="subtitle">Reeingrese los campos que desee modificar.</h3>
          <form class="formulario" action="gestionusuarios?perf=Profesional&op=update" method="post">
            </c:if>


            <div class="formulario__container">
              <div class="formulario__campo ">
                <label class="formulario__label" for="run">RUN: </label>
                <c:choose>
                  <c:when test="${op == 'edit'}">
                    <input readonly class="formulario__input" type="text" name="run" id="run" value="${user.run}">
                  </c:when>
                  <c:otherwise>
                    <input required class="formulario__input" type="text" name="run" id="run" value="${user.run}">
                  </c:otherwise>
                </c:choose>
              </div>
              <div class="formulario__campo">
                <label class="formulario__label" for="nombres">Nombres: </label>
                <input required class="formulario__input" type="text" name="nombres" id="nombres" value="${user.nombre}">
              </div>
            </div>


            <div class="formulario__container">
              <div class="formulario__campo ">
                <label class="formulario__label" for="fnacimiento">Fecha Nacimiento: </label>
                <input required class="formulario__input" type="date" name="fnacimiento" id="fnacimiento"
                       value="${user.fechaNacimiento}">
              </div>
              <div class="formulario__campo ">
                <label class="formulario__label" for="fingreso">Fecha Ingreso:</label>
                <input required class="formulario__input" type="date" name="fingreso" id="fingreso" value="${user.fechaIngreso}">
              </div>

            </div>
            <div class="formulario__container">
              <div class="formulario__campo ">
                <label class="formulario__label" for="titulo">Titulo: </label>
                <input required class="formulario__input" type="text" name="titulo" id="titulo" value="${user.titulo}">
              </div>

            </div>

            <div class="button__container">
              <input type="reset" value="Limpiar Campos" class="button button--secondary">
              <button type="submit" class="button button--primary">Enviar Solicitud</button>
            </div>
          </form>
      </main>

    </div>
    <script>
        <%@include file="../../scripts/script.js" %>
    </script>
  </body>

</html>