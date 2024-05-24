<?php

require_once "ConexionBD.php";

 use PhpOffice\PhpSpreadsheet\IOFactory; 


class ProductosModelo{

    static public function mdlCargaMasivaProductos($fileProductos){

        $nombreArchivo = $fileProductos['tmp_name']; //nombre del archivo desde el formulario //
        $documento = IOFactory::load($nombreArchivo);

        $hojaCategorias= $documento->getSheet(0);

        $numeroFilasCategorias = $hojaCategorias->getHighestDataRow(); //contamos las filas //

        $categoriasRegistradas = 0;

        for ($i=2; $i <= $numeroFilasCategorias ; $i++) { 
            $categoria = $hojaCategorias->getCellByColumnAndRow(1, $i);  //la columna numero 1 //
            $aplica_peso = $hojaCategorias->getCellByColumnAndRow(2, $i);  //la columna numero 2//
            $cargo = $hojaCategorias->getCellByColumnAndRow(3, $i);  //la columna numero 2//
            $correo = $hojaCategorias->getCellByColumnAndRow(4, $i);  //la columna numero 2//
            $institucion = $hojaCategorias->getCellByColumnAndRow(5, $i);  //la columna numero 2//

            if(!empty($categoria)){
            $stmt = ConexionBD::cBD()->prepare("INSERT INTO consultores(apellido,nombre,cargo,correo,institucion)
                                                                            values(:apellido,
                                                                                :nombre,:cargo,:correo,:institucion);");
            $stmt -> bindParam(":apellido",$categoria,PDO::PARAM_STR);
            $stmt -> bindParam(":nombre",$aplica_peso,PDO::PARAM_STR);
            $stmt -> bindParam(":cargo",$cargo,PDO::PARAM_STR);
            $stmt -> bindParam(":correo",$correo,PDO::PARAM_STR);
            $stmt -> bindParam(":institucion",$institucion,PDO::PARAM_STR); 

                 if($stmt->execute()){
                     $categoriasRegistradas = $categoriasRegistradas + 1;
                 }else{
                    $categoriasRegistradas = 0;
                 }
            }

        }       
        return $categoriasRegistradas;
    }
}
