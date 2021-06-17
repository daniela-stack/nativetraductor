<?php

include_once( "conexion.php");
class delete extends conexion
{
    static function borrar ($tabla, $campo = null, $dato = null)
    {
        $conexion = self::conectar( );
        
        $sql = " DELETE  ";
        $sql .=" FROM $tabla ";
        
        if ( $campo != null && $dato != null) 
        {
            $sql .=" WHERE $campo = '$dato' ";
        }

        echo $sql;
        $resultado = $conexion->query( $sql );

        if($conexion->affected_rows > 0)
        {
        echo "tus datos se borraron. ";
        }

        else{
        echo "tus datos no se borraron. ";
        }
        $conexion->close(); //cierra la conexion
        
    }
}
