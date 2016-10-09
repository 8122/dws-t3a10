<%--
    Document   : login
    Created on : 09-oct-2016, 11:27:30
    Author     : Ramon
--%>

<%@page contentType="text/html; UTF-8" errorPage="/login.jsp"%>
<!DOCTYPE html>
<jsp:useBean id="user" scope="request" class="entidad.LoginBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
        <% if (
                (request.getParameter("usuario")==null || request.getParameter("usuario").equals("")) &&
                (request.getParameter("contrasena")==null || request.getParameter("contrasena").equals("")) &&
                (request.getParameter("recordar")==null || request.getParameter("recordar").equals(""))
        ) { %>
        <h1>Formulario de login de usuarios</h1>
        <form name="formularioLogin" method="POST" action="login.jsp">
        <label>Nombre de usuario*:</label>
        <input type="text" name="usuario" value="" /><br><br>
        <label>Clave de acceso*:</label>
        <input type="password" name="contrasena" value="" /><br><br>
        <label>Recordar datos de accesos: </label><input type="checkbox" name="recordar" value="ON"/><br>
        <p>Los campos marcados con un asterisco deben rellenarse de forma obligatoria</p>
        <input style="border-radius: 10px" type="submit" name="enviar" value="Enviar consulta"/>
        <input style="border-radius: 10px" type="reset" name="restablecer" value="Restablecer"/>
        </form>
        <% } else { %>
            <% String usuario, contrasena, recordar; %>
            <% 
                usuario = request.getParameter("usuario");
                contrasena = request.getParameter("contrasena");
                recordar = request.getParameter("recordar");
            %>
            <%-- if(recordar.equals("ON")) { %>
                <jsp:setProperty name="user" property="usuario" value="<%=usuario%>" />
                <jsp:setProperty name="user" property="contrasena" value="<%=contrasena%>" />
                <jsp:setProperty name="user" property="recordar" value="<%=recordar%>" />
            <% } else { %>
                <jsp:setProperty name="user" property="usuario" value="" />
                <jsp:setProperty name="user" property="contrasena" value="" />
                <jsp:setProperty name="user" property="recordar" value="" />
            <% } --%>
            <% if(usuario.equals(user.getUsuarioCorrecto()) && contrasena.equals(user.getContrasenaCorrecta())) { %>
                <jsp:setProperty name="user" property="usuario" value="<%=usuario%>" />
                <%--<jsp:setProperty name="user" property="contrasena" value="<%=contrasena%>" />
                <jsp:setProperty name="user" property="recordar" value="<%=recordar%>" />--%>
                <jsp:forward page="/principal.jsp" ></jsp:forward>
            <% } else { 
                user.setUsuario(null);
                user.setContrasena(null);
                user.setRecordar(null);
            %>
                <jsp:forward page="/login.jsp" ></jsp:forward>
            <% } %>
        <% } %>
    </body>
</html>
