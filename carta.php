<?php

//conectamos con la base de datos //

$conn = new mysqli("localhost", "root", '', "usuarios");

if ($conn->connect_errno) {
  die('eror' . $conn->error);
}

ob_start();

// Include classes
include_once('tbs_class.php'); // cvargar los templatesLoad 
include_once('plugins/tbs_plugin_opentbs.php'); // cargar los plugin de opentbs

$TBS = new clsTinyButStrong; // new instance of TBS
$TBS->Plugin(TBS_INSTALL, OPENTBS_PLUGIN); // cargar los plugin de opentbs


$id=$_GET["id"]; //capturamos el id de la base de datos//

$query1 = $conn->query("SELECT * FROM consultores WHERE id='$id'");


$data = array();
while ($getdata = $query1->fetch_assoc()){

    $data[]=$getdata;
}

//las fechas de Lima Perú ///
date_default_timezone_set('America/Lima');  
$lenguage = 'spanish.UTF-8';
putenv("LANG=$lenguage");
setlocale(LC_ALL, $lenguage);


$fecha = strftime("%A, %d de %B del %Y");  //obtener formato de fecha ///



$template = 'cartas.docx';
$TBS->LoadTemplate($template, OPENTBS_ALREADY_UTF8); // Also merge some [onload] automatic fields (depends of the type of
// Merge data in the body of the document




$TBS->MergeBlock('data', $data);  //aca traemos los datos de las fechas //

$TBS->MergeField('fecha', $fecha);  //aca traemos los datos//




$TBS->PlugIn(OPENTBS_DELETE_COMMENTS);

$save_as = (isset($_POST['save_as']) && (trim($_POST['save_as'])!=='') && ($_SERVER['SERVER_NAME']=='localhost')) ? trim($_POST['save_as']) : '';
$output_file_name = str_replace('.', '_'.date('Y-m-d').$save_as.'.', $template);
if ($save_as==='') {
    $TBS->Show(OPENTBS_DOWNLOAD, $output_file_name); 
    exit();
} else {
    $TBS->Show(OPENTBS_FILE, $output_file_name);
    exit("File [$output_file_name] has been created.");
}

?>