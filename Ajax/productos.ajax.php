<?php

require_once "../controladores/productos.controlador.php";
require_once "../modelos/productos.modelo.php";

require_once "../vendor/autoload.php";


class ajaxProductos{

    public $fileProductos;  //desde el fomrulario//

    public function ajaxCargaMasivaProductos(){

        $respuesta = ProductosControlador::ctrCargaMasivaProductos($this->fileProductos);

        echo json_encode($respuesta);  //trae arrays puros//
    }
}

if(isset($_FILES)){
    $archivo_productos = new ajaxProductos();
    $archivo_productos-> fileProductos = $_FILES['fileProductos'];
    $archivo_productos -> ajaxCargaMasivaProductos();
}

?>