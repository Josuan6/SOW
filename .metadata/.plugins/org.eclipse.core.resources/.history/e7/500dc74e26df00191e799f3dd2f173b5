<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loading</title>
</head>
<body>
<%@ page import= "java.sql.*"%>
	<% 
	String nombre, correo, clave;
	nombre = request.getParameter("nombre");
	correo = request.getParameter("correo");
	clave = request.getParameter("clave");
	out.print("outer");
	out.print(nombre);
	out.print(correo);
	out.print(clave);
	if (nombre != null && nombre != "" && correo != null && correo != "" && clave != null && clave != ""){
		try {
			Class.forName("com.mysql.jdbc.Driver.class");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sow?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","12345");
			PreparedStatement ps = conn.prepareStatement("insert into usuario (Nombre, correo, clave) values (?,?,?)");
			ps.setString(1, nombre);
			ps.setString(2, correo);
			ps.setString(3, clave);
			ps.executeUpdate();
		out.print("intter");
		}catch(SQLException e){
		e.getMessage();
		e.printStackTrace();
		}
    }
	%>
	
</body>
</html>