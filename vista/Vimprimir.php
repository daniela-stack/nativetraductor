<!--este archivo me organiza las palabras en una tabla, para ser mostrado.-->

<?php

    //clase para organizar en una tabla
    class Vimprimir
    {
        static function imprimir( $resultado, $des = null )
        {
            return self::organizar( $resultado, $des );
        }

        static function organizar( $resultado, $des = null )
        {
            $salida = "";
            $id = "";

            if( $des == null ) $salida .= "<table border='1px'>";

            while( $fila = mysqli_fetch_array( $resultado ) )
            {
                if( $des == null ) $salida .= "<tr>";

                for( $i = 0; $i < mysqli_num_fields( $resultado ); $i ++ )
                {
                    if( $i == 0 ) $id = $fila[ 0 ]; 

                    if( $des == null ) $salida .= "<td>";
                    $salida .= $fila[ $i ];
                    if( $des == null ) $salida .= "</td>";

                    // if( $i + 1 == mysqli_num_fields( $resultado ) )
                    // {
                    //     if( $des == null ) $salida .= "<td><a href='#'></a></td>";
                    //     if( $des == null ) $salida .= "<td><a href='c-cita-borrar.php?id=$id'></a></td>";
                    // }
                }

                //$salida .= "<td><a href='#'></a></td>";
                //$salida .= "<td><a href='c-cita-borrar.php?id=$id'></a></td>";



                if( $des == null ) $salida .= "</tr>";
            }            

            if( $des == null ) $salida .= "</table>";

            return $salida;
        }


        static function organizar2( $resultado, $des = null )
        {
            while( $fila = mysqli_fetch_array( $resultado ) )
            {
                echo $fila[ 0 ];
            } 

        }

    }
    