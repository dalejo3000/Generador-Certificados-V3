<?php
include "./conexion.php";

if(isset($_POST['nombre']) &&  isset($_POST['telefono'])   &&  isset($_POST['email'])
&&  isset($_POST['password']) &&  isset($_POST['nivel']) &&  isset($_POST['cedula'])
&&  isset($_POST['fecha']) &&  isset($_POST['curso'])){

    $carpeta="../images/users/";
    $nombre = $_FILES['img_perfil']['name'];

    //img_perfil.casa.jpg
    $temp= explode( '.' ,$nombre);
    $extension= end($temp);

    $nombreFinal = time().'.'.$extension;

    if($extension=='jpg' || $extension == 'png'){
        if(move_uploaded_file($_FILES['img_perfil']['tmp_name'], $carpeta.$nombreFinal)){
            $conexion->query("insert into usuario
                (nombre,telefono,email,password, img_perfil,nivel,cedula, fecha, curso) values
                (
                    '".$_POST['nombre']."',
                    '".$_POST['telefono']."',
                    ".$_POST['email'].",
                    '".$_POST['password']."',
                    '$nombreFinal',
                    '".$_POST['nivel']."',
                    '".$_POST['cedula']."',
                    '".$_POST['fecha']."',
                    '".$_POST['curso']."',
                )   ")or die($conexion->error);
                header("Location: ../admin/usuarios.php?success");
        }else{
            header("Location: ../admin/usuarios.php?error=No se pudo subir la img_perfil");
        }
    }else{
        header("Location: ../admin/usuarios.php?error=Favor de subir una img_perfil valida");
    }

}else{
    header("Location: ../admin/usuarios.php?error=Favor de llenar todos los campos");
}

?>
