<?php
include "conexion.php";

if(isset($_POST['nombre']) &&  isset($_POST['telefono'])   &&  isset($_POST['email'])
&&  isset($_POST['password']) &&  isset($_POST['nivel']) &&  isset($_POST['cedula'])
&&  isset($_POST['fecha']) &&  isset($_POST['curso'])){


    if($_FILES['imagen']['name'] !='' ){
        $carpeta="../images/users/";
        $nombre = $_FILES['imagen']['name'];
        $temp= explode( '.' ,$nombre);
        $extension= end($temp);

        $nombreFinal = time().'.'.$extension;

        if($extension=='jpg' || $extension == 'png'){
            if(move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$nombreFinal)){
                $fila = $conexion->query('select img_perfil  from usuarios where id='.$_POST['id']);
                $id = mysqli_fetch_row($fila);
                if(file_exists('../images/users/'.$id[0])){
                    unlink('../images/users/'.$id[0]);
                }
                $conexion->query("update usuario set imagen='".$nombreFinal."' where id=".$_POST['id']);
            }

        }//llave tipo archivo
    }    //llave si no esta vacio

    $conexion->query("update usuario set
                        nombre='".$_POST['nombre']."',
                        telefono='".$_POST['telefono']."',
                        email=".$_POST['email'].",
                        password=".$_POST['password'].",
                        
                        cedula=".$_POST['cedula']."',
                        fecha=".$_POST['fecha']."',
                        curso=".$_POST['curso']."'
                        where id=".$_POST['id']);
    echo "se actualizo";
}
?>
