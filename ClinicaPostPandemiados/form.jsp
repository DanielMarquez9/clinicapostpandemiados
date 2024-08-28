<!-- src/main/webapp/WEB-INF/views/pacientes/form.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Paciente</title>
</head>
<body>
    <h1>Formulario de Paciente</h1>
    <form action="${pageContext.request.contextPath}/pacientes" method="post">
        <input type="hidden" name="id" value="${paciente.id}" />
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" value="${paciente.nombre}" /><br/>

        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" value="${paciente.apellido}" /><br/>

        <label for="fechaIngreso">Fecha de Ingreso:</label>
        <input type="text" id="fechaIngreso" name="fechaIngreso" value="${paciente.fechaIngreso}" /><br/>

        <input type="submit" value="Guardar" />
    </form>
</body>
</html>
