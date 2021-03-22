<?php
include "./conexion.php";

if(isset($_POST['nombre']) &&  isset($_POST['descripcion'])   &&  isset($_POST['precio'])
&&  isset($_POST['inventario'])){

    $carpeta="../images/";
    $nombre = $_FILES['imagen']['name'];

    //imagen.casa.jpg
    $temp= explode( '.' ,$nombre);
    $extension= end($temp);

    $nombreFinal = time().'.'.$extension;

    if($extension=='jpg' || $extension == 'png'){
        if(move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$nombreFinal)){
            $conexion->query("insert into productos
                (nombre,descripcion,imagen,precio,inventario) values
                (
                    '".$_POST['nombre']."',
                    '".$_POST['descripcion']."',
                    '$nombreFinal',
                    ".$_POST['precio'].",
                    '".$_POST['inventario']."'
                )   ")or die($conexion->error);
                header("Location: ../pagina/productos.php?success");
        }else{
            header("Location: ../pagina/productos.php?error=No se pudo subir la imagen");
        }
    }else{
        header("Location: ../pagina/productos.php?error=Favor de subir una imagen valida");
    }

}else{
    header("Location: ../pagina/productos.php?error=Favor de llenar todos los campos");
}

?>
