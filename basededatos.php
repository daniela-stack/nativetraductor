<?php

//clase de la base de datos
    class BasedeDatos{


        //variables
        public $mensaje = "";
        public $filas_afectadas = 0;
        public $ultimo_id = 0;
        public $comando_sql= "";


        //esta función me retorna un mensaje de error
        function mensaje_error(){

            $m = "mensaje error sql";
            $m .= "<br> mensaje: " . $this->mensaje; 
            $m .= "<br> instruccion sql: " . $this->comando_sql;

            return $m;

        }

        //esta función me ejecuta los comando de SQL
        function ejecutar_sql( $comandosql){

            //en esta linea se inicia la conección con la base de datos
            $conexion = mysqli_connect( "localhost", "root", "", "traductor3_3" );
            
            //ejecuta la consulta
            $resultado = $conexion->query($comandosql);

            $this->mensaje = $conexion->error;
            $this->filas_afectadas = $conexion->affected_rows;
            $this->ultimo_id = $conexion->insert_id;
            $this->comando_sql = $comandosql;
            $conexion->close();//cierra la conexión
            return $resultado;
        }

        //esta función me selecciona lo que necesito de l abase de datos
        function select( $comandosql ){

            
            $arreglo = array();
            $b= $this->ejecutar_sql($comandosql);

            while($fila = mysqli_fetch_assoc($b))
                {
                    $arreglo[] = $fila;
                }

            return $arreglo;

        }


        //esta función me realiza las inserciones a la base de datos
        function insert($tabla,array $parametros, $retornar_id = false){

            if(count( $parametros) > 0) {

                $campos = "";
                $valores = "";

                foreach($parametros as $campo => $valor ){

                    $campos .= ", " . $campo;
                    $valores .= ", '$valor'";

                }

                $campos= ltrim($campos,', ');
                $valores= ltrim($valores,', ');

                $this->ejecutar_sql(" insert into $tabla( $campos ) values ( $valores)");
                if ($retornar_id == true){
                    return $this->ultimo_id;
                }else{
                    if($this->filas_afectadas>0){
                        return true;
                    }else{
                        return false;
                    }
                }
                }


        }
    }