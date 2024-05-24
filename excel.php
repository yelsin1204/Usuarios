<?php

	require 'Classes/PHPExcel.php';
	
	//Consulta
	require_once "Modelos/ConexionBD.php";
	$data=ConexionBD::cBD()->query("SELECT * FROM consultores"); 
	$fila = 7; //Establecemos en que fila inciara a imprimir los datos
	
	// $gdImage = imagecreatefrompng('images/logo.png');//Logotipo
	
	//Objeto de PHPExcel
	$objPHPExcel  = new PHPExcel();
$objPHPExcel->getProperties()->setCreator("Yelsin")->setDescription("Reporte de Productos");

	$objPHPExcel->setActiveSheetIndex(0);
	$objPHPExcel->getActiveSheet()->setTitle("Productos");
         


	$objPHPExcel->getActiveSheet()->setCellValue('A1', 'ID');
	
	$objPHPExcel->getActiveSheet()->setCellValue('B1', 'NOMBRE');
	
	$objPHPExcel->getActiveSheet()->setCellValue('C1', 'Apellido');
	
	$objPHPExcel->getActiveSheet()->setCellValue('D1', 'Cargo');
	
	$rows==0;
	foreach($rows as $data){
	
		$objPHPExcel->getActiveSheet()->setCellValue('A'.$fila, $rows['id']);
		$objPHPExcel->getActiveSheet()->setCellValue('B'.$fila, $rows['nombre']);
		$objPHPExcel->getActiveSheet()->setCellValue('C'.$fila, $rows['apellido']);
		$objPHPExcel->getActiveSheet()->setCellValue('D'.$fila, $rows['cargo']);
		
		$fila++; //Sumamos 1 para pasar a la siguiente fila
	}

	// header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	// header('Content-Disposition: attachment;filename="Productos.xlsx"');
	// header('Cache-Control: max-age=0');
 //     $objWriter=new PHPExcel_Writer_Excel2007($objPHPExcel);
	
	// $objWriter->save('php://output');