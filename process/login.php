<?php
    session_start();
    include '../library/configServer.php';
    include '../library/consulSQL.php';
    sleep(2);
    $nombre=$_POST['correo'];
    $clave=md5($_POST['pass']);
    if(!$nombre==""&&!$clave==""){
        $verUser=ejecutarSQL::consultar("select * from usuario where nombre='$nombre' and password='$clave'");
            $UserC=mysql_num_rows($verUser);
            if($UserC>0){
                $_SESSION['nombreUser']=$nombre;
                $_SESSION['claveUser']=$clave;
                echo '<script> location.href="index.php"; </script>';
            }else{
                echo '<img src="https://image.flaticon.com/icons/png/512/1538/1538470.png" class="center-all-contens"><br>Error nombre o contraseña invalido';
            }

    }else{
        echo '<img src="https://image.flaticon.com/icons/png/512/1538/1538470.png" class="center-all-contens"><br>Error campo vacío<br>Intente nuevamente';
    }