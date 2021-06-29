
<!--este archivo me permite relacionar las palabras de la BD.-->

<form action="prueba.php" method="POST"><!-- Apertura del formulario -->

    <select name="v1"><!-- lista -->

    <?php

        //Inicia la conexion
        $conexion = mysqli_connect( "localhost", "root", "", "traductor3_3" );
        
        //construcción de la consulta
        $sql  = " SELECT palabra_1, palabra ";
        $sql .= " FROM tb_traduccion t1, tb_palabras t2 ";
        $sql .= " WHERE t1.id_palabra = t2.id_palabra ";
        //echo $sql;
        $resultado = $conexion->query( $sql );

        //recorre los datos que arroja la consulta
        while( $fila = mysqli_fetch_assoc( $resultado ) )
        {
            $palabra_1 = $fila[ 'palabra_1' ];//captura columna
            $palabra = $fila[ 'palabra' ];//captura columna
            //imprime items de la lista
            echo "<option value='$palabra_1'>$palabra</option>";
        }
    ?>

    </select><!--  termina lista -->
    
    <select name="v4">

    <?php

        $conexion = mysqli_connect( "localhost", "root", "", "traductor3_3" );
        $sql = "SELECT * FROM tb_palabras";
        //echo $sql;
        $resultado = $conexion->query( $sql );

        while( $fila = mysqli_fetch_assoc( $resultado ) )
        {
            $palabra = $fila[ 'palabra' ];
            $id_palabra = $fila[ 'id_palabra' ];
            echo "<option value='$id_palabra'>$palabra</option>";
        }
    ?>

    </select>
    <br>

    <input type="submit" value="Guardar"><!-- Boton -->

</form><!--cierra formulario -->