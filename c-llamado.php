<?php

include("funciones/funcion_traducir.php");
include( "vista/Vimprimir.php" );

$palabra = $_POST[ 'palabra' ];
$r = llamado::traduce("$palabra");
$r = Vimprimir::organizar( $r );


//echo $r;

//seccion de vistas
$seccion = "vista/v-llamado.php";
include( "vista/v-plantilla.php" );
