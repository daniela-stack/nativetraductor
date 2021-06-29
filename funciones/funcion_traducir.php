<?php

    //incluye la conección de la BD
    include("conexion.php");
    //clase para la traducción de las palabras.
    class llamado extends conexion
    {
        static function traduce($palabra)
        {
        
            $conexion = self::conectar( );

            
            //construcción de la consulta
            $sql = "SELECT t1.palabra FROM tb_palabras t1
            INNER JOIN tb_palabras_idiomas t2 ON t2.id_palabra = t1.id_palabra
            INNER JOIN tb_idiomas t3 ON t3.id_idioma = t2.id_idioma
            WHERE t1.id_palabra IN 
            (
                SELECT tb_traduccion.palabra_2 FROM tb_traduccion WHERE tb_traduccion.palabra_1 IN 
                (
                    SELECT t2.palabra_1 FROM tb_palabras t1
                    INNER JOIN tb_traduccion t2 ON t2.palabra_2 = t1.id_palabra
                    WHERE t1.palabra = '$palabra'
                )
            )";

            //$sql = "SELECT DATABASE()";

            //$sql = "show TABLES";
            
            //echo $sql;
            $resultado = $conexion->query($sql);//ejecuta la consulta

            return $resultado;

        }
    }

  