<?php
/**estas son las funcion */
//incluye la conección de la BD
include_once("conexion.php");

//clase para la inserción.
class inserts extends conexion
{
    //Esta funcion trae los datos del sistema
static function adicionar_buscar($tabla, $campo = null, $dato = null)
{
    $conexion = self::conectar( );

    $sql  = "INSERT INTO $tabla ";
    
    if( $campo != null && $dato != null ) 
    {
        $sql .= "VALUES($dato) ";
    }
    
    echo $sql;
    //echo = $sql;
    $resultado = $conexion->query($sql);
   

    if($conexion->affected_rows > 0)
    {
     echo "tus datos se guardaron. ";
    }

    else{
     echo "tus datos no se guardaron. ";
    }

    $conexion->close();
}

}

