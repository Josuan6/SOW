<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
	<div>
	
	<form action="Controler" method="POST">
	<input type="submit" name="accion" value="Listar">
	<input type="submit" name="accion" value="Nuevo">
	</form>
	
	<table border="1">
<thead>
  <tr>

    <th>ID</th>

    <th>NOMBRES</th>

    <th>FOTO</th>
    
    <th>ACCIONES</th>

  </tr>
</thead>
<tbody>
<c:forEach var="dato" items="${lista}">
  <tr>

    <td>${dato.getId()}</td>

    <td>${dato.getNombre}</td>

    <td><img alt="" src="ControlerImg?id=${dato.getId()}" with="250px" height="230"></td>
    
    <td>
    <form>
    <input type="submit" name="accion" value="Editar">
    <input type="submit" name="accion" value="Delete">
    </form>
    
    </td>

  </tr>
  </c:forEach>
</tbody>
</table>
	</div>
	</center>
</body>
</html>