<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import= "java.sql.*"%>
	<% 

	out.println("outer");
	if (true){
		try {
			String nombre, correo, clave;
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sow?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","12345");
			out.print(conn);
			nombre = request.getParameter("nombre");
			correo = request.getParameter("correo");
			clave = request.getParameter("clave");
			Statement s = conn.createStatement();
			out.println("hasta aqui");
			String a = "insert into usuario (Nombre, correo, clave) values ('"+nombre+"','"+correo+"','"+clave+"')";
			
			out.println(nombre);
			out.println(correo);
			out.println(clave);
			s.executeQuery(a);
			out.println(a);
		out.print("intter");
		}catch(SQLException e){
			System.out.println(e.getMessage());
		e.printStackTrace();
		out.print("se mamo");
		}
		out.print("fin");
    }
	%>

</body>
</html>