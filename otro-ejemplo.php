<?php
//https://programacion.net/articulo/como_crear_archivos_pdf_con_php_1886
//http://www.fpdf.org/
//include_once("../db_connect.php");
//consultas
$conn = mysqli_connect( "localhost", "root", "", "traductor3_3" );
$sql  = " SELECT palabra_1 as relacion, palabra ";
$sql .= " FROM tb_traduccion t1, tb_palabras t2 ";
$sql .= " WHERE t1.id_palabra = t2.id_palabra ";
//-------------------me muestra el contenido en PDF.--------------------------------------------

$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
require('fpdf.php');
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',12);
while ($field_info = mysqli_fetch_field($resultset)) 
{
    $pdf->Cell(47,12,$field_info->name,1);
}
while($rows = mysqli_fetch_assoc($resultset)) 
{
    $pdf->SetFont('Arial','',12);
    $pdf->Ln();
    foreach($rows as $column) 
    {
        $pdf->Cell(47,12,$column,1);
    }
}
$pdf->Output();
?>
