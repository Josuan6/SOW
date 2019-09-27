<?php 

	/*Datos de Conexión BD*/
	$host_db	= 	"localhost";
	$user_bd	=	"root";
	$pass_db	=	"123456";
	$db_name	=	"store";

	/*Conexión*/
	$conexion = new mysqli($host_db, $user_bd, $pass_db, $db_name);

	if ($conexion->connect_error) {
		die("La Conexión Fallo:" .$conexion->connect_error);
	}
	/*Fin datos de conexion*/

	/*Datos enviados del formulario*/

		$nombre = $_POST['nombre'];
		$email = $_POST['email'];
		$pass_registro = $_POST['pass_registro'];

		echo"$nombre";
		echo"$email";
		echo"$pass_registro";


		$query = "insert into usuario(id_usuario, nombre, email, password) values (0,'$nombre', '$email', '$pass_registro' )";
		
		echo $query;
		$conexion->query($query);
    /*if ($conexion->query($query) === TRUE) {
	 	echo "<h4>" . "NOMBRE: " . $nombre . "</h4>" . "\n\n";
	 	echo "<h4>" . "EMAIL: " . $email . "</h4>" . "\n\n";
		 echo "<h4>" . "PAIS: " . $pais . "</h4>" . "\n\n";
	 	echo "<h4>" . "DIRECCION: " . $direccion . "</h4>" . "\n\n";
	 	echo "<h4>" . "TELEFONO: " . $telefono . "</h4>" . "\n\n";
		 echo "<h4>" . "DEDICACION: " . $dedicacion . "</h4>" . "\n\n";
	 	echo "<h4>" . "PERSONA DE CONTACTO" . $persona_contacto . "</h4>" . "\n\n";
	 	echo "<h4>" . "TIPO DE SOLICITUD: " . $tipo_solicitud . "</h4>" . "\n\n";
		 echo "<h4>" . "HORARIO: " . $horario . "</h4>" . "\n\n";
		 echo "<h4>" . "SUELDO: " . $sueldo . "</h4>" . "\n\n";
	}*/
 mysqli_close($conexion);



 ?>