<?php


    //archivo de pruebas
    $a = $_POST[ 'v1' ];
    //$b = $_POST[ 'v2' ];
    //$c = $_POST[ 'v3' ];
    $d = $_POST[ 'v4' ];

    //echo $a.$b.$c.$d;

    //consultas
    $conexion = mysqli_connect( "localhost", "root", "", "traductor3_3" );
    $sql = " INSERT INTO tb_traduccion ( id, palabra_1, palabra_2, id_palabra ) ";
    $sql .= " VALUES( NULL, '$a', '$d', '$d' ) ";
    //echo $sql;
    $resultado = $conexion->query( $sql );


    /*$ar['palabra_1'] = $_POST['v1'];
    $ar['palabra_2'] = $_POST['v4'];
    //$db = new BasedeDatos();

    $db->insert('tb_traduccion',$ar);*/
    

    //Esta línea verifica si la inserción funciono.
    if( mysqli_affected_rows( $conexion ) > 0 )
    {
        echo "Se escrbieron tus datos";

    }else{
            echo "No se escrbieron tus datos";
        }
        