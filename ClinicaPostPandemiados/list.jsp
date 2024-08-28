<!-- src/main/webapp/WEB-INF/views/pacientes/list.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Pacientes</title>
</head>
<body>
    <h1>Lista de Pacientes</h1>
    <a href="${pageContext.request.contextPath}/pacientes/nuevo">Nuevo Paciente</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Fecha Ingreso</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${pacientes}" var="paciente">
                <tr>
                    <td>${paciente.id}</td>
                    <td>${paciente.nombre}</td>
                    <td>${paciente.apellido}</td>
                    <td>${paciente.fechaIngreso}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/pacientes/editar/${paciente.id}">Editar</a>
                        <a href="${pageContext.request.contextPath}/pacientes/eliminar/${paciente.id}">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
