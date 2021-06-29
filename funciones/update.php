<?php
//incluye la conección de la BD
include_once("conexion.php");
//clase para la actualización.
class update extends conexion
{
        static function actualizar ($tabla, $campo = null, $dato = null, $llave = null, $dato2 = null)
    {
        
        $conexion = self::conectar( );
        $sql = " UPDATE $tabla ";
                  
        if ( $campo != null && $dato != null) 
        {
            $sql .=" SET $campo='$dato' ";
            $sql .= "WHERE $llave = '$dato2' "; 
            
        }

        echo $sql;
        $resultado = $conexion->query( $sql );
        $conexion->close(); //cierra la conexion
        

    }
}