<?php

include_once("conexion.php");

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