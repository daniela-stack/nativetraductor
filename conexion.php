<?php

// clase de la conexion a la base de datos
class conexion
{
    static function conectar()
    {
        return mysqli_connect("localhost", "root", "", "traductor3_3");
    }
}
