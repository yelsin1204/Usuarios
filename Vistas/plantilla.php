<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Usuarios</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="http://localhost/Usuarios/Vistas/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="http://localhost/Usuarios/Vistas/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="http://localhost/Usuarios/Vistas/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="http://localhost/Usuarios/Vistas/dist/css/AdminLTE.min.css">
  
  
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="http://localhost/Usuarios/Vistas/dist/css/skins/_all-skins.min.css">

 <!-- <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">-->
  <!--datatables-->
<link rel="stylesheet" href="http://localhost/Usuarios/Vistas/bower_components/datatables.net-bs/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="http://localhost/Usuarios/Vistas/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<!--<script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>-->

<!--botones para exportaciones-->




<!--select2-->
<link rel="stylesheet" href="http://localhost/Usuarios/Vistas/bower_components/select2/dist/css/select2.css">



  <!-- Google Font -->
 <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
-->
  <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>

</head>


<body class=" sidebar-mini  " >
<!-- Site wrapper -->

<!--<div class="wrapper para poder encapsular los datos "---> 
<?php

if(isset($_SESSION["Ingresar"]) && $_SESSION["Ingresar"] == true){

echo '<div class="wrapper">';

include "modulos/cabecera.php";

include "modulos/menu.php";



 $url = array();

 if(isset($_GET["url"])){

  $url = explode("/",$_GET["url"]);

  if($url[0] == "inicio"  || $url[0] == "salir" ||  $url[0] == "consultorios"   ||  $url[0] == "E-C" ||  $url[0] == "consultores" || $url[0]=="administradores" || $url[0] == "historial"  || $url[0] == "historias" || $url[0] =="archivo" || $url[0]=="ListadoA" 
 || $url[0]=="pie" || $url[0]=="perfil"  || $url[0]== "MisCVS" || $url[0]== "ListadoContactos" || $url[0]=="carpetas" || $url[0]== "carga"){
// las comillas tienen  que  estar pegadas // 

  include "modulos/".$url[0].".php";
  


  }

  }else{
    include "modulos/inicio.php";

  }

  include "modulos/pie.php";

  echo '</div>';

 } else if(isset($_GET["url"])){
  if ($_GET["url"] == "ingreso") {

   include "modulos/ingreso.php";
   
  } else if($_GET["url"] == "ingreso") {
    include "modulos/ingreso.php";
  }
}else{
  include "modulos/ingreso.php";
}

?>

<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="http://localhost/Usuarios/Vistas/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="http://localhost/Usuarios/Vistas/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="http://localhost/Usuarios/Vistas/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="http://localhost/Usuarios/Vistas/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="http://localhost/Usuarios/Vistas/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="http://localhost/Usuarios/Vistas/dist/js/demo.js"></script>

<!---datatables---->
<script src="http://localhost/Usuarios/Vistas/bower_components/datatables.net/js/jquery.dataTables.js"></script>

<script src="http://localhost/Usuarios/Vistas/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>

<script src="http://localhost/Usuarios/Vistas/bower_components/datatables.net-bs/js/dataTables.bootstrap.js"></script>

<script src="http://localhost/Usuarios/Vistas/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script src="http://localhost/Usuarios/Vistas/js/funcionarios.js"></script>
<script src="http://localhost/Usuarios/Vistas/js/admins.js"></script>
<script src="http://localhost/Usuarios/Vistas/js/archivos.js"></script>
<script src="http://localhost/Usuarios/Vistas/js/validar.js"></script>
<!--imputs masks-->

<script src="http://localhost/Usuarios/Vistas/bower_components/input-mask/jquery.inputmask.js"></script>
<script src="http://localhost/Usuarios/Vistas/bower_components/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="http://localhost/Usuarios/Vistas/bower_components/input-mask/jquery.inputmask.extensions.js
"></script>


<!-- mensajes de alerta-->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!--<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">-->


<!--botones para exportaciones-->
 <!-- Para usar los botones -->


 <!--select2 -->
 <script src="http://localhost/Usuarios/Vistas/bower_components/select2/dist/js/select2.js"></script>


<script>


  $("#select2x").select2({ width: '250px' });

  $(document).ready(function () {
    $('.sidebar-menu').tree()

    $('[data-mask]').inputmask();


  })


     $(document).ready(function(){
         $("#form_carga_productos").on('submit',function(e){

             e.preventDefault();

             /*===================================================================*/
            // VALIDAR QUE SE SELECCIONE UN ARCHIVO
             /*===================================================================*/

            // sin no se seleccione nada hacemos una alerta 
             if($("#fileProductos").get(0).files.length == 0){
                 Swal.fire({
                     position:'center',
                     icon: 'warning',
                     title: 'Debe seleccionar un archivo (Excel).',
                     showConfirmButton: false,
                     timer: 2500
                 })
             }else{

                 /*===================================================================*/
                // VALIDAR QUE EL ARCHIVO SELECCIONADO SEA EN EXTENSION XLS O XLSX
                 /*===================================================================*/
                 var extensiones_permitidas = [".xls",".xlsx"];
                 var input_file_productos = $("#fileProductos");
                 var exp_reg = new RegExp("([a-zA-Z0-9\s_\\-.\:])+(" + extensiones_permitidas.join('|') + ")$");


              //   si no cumple con los parametros de la expresion regular del input file nos manda el mensaje 
                 if(!exp_reg.test(input_file_productos.val().toLowerCase())){
                     Swal.fire({
                         position:'center',
                         icon:'warning',
                         title: 'Debe seleccionar un archivo formato excel con extensión .xls o .xlsx.',
                         showConfirmButton: false,
                         timer: 2500
                     })
                 
                     return false;
                 }


              //   atrapamos los datos del formulario
                  var datos = new FormData($(form_carga_productos)[0]);

                  $("#btncargar").prop("disabled",true);
                  $("#img_carga").attr("style","display:block");
                  $("#img_carga").attr("style","height:200px");
                  $("#img_carga").attr("style","width:200px");

                 // con el metodo ajax pasaremos los datos a la base de datos
                  $.ajax({
                     url: "ajax/productos.ajax.php",
                     type: "POST",
                     data: datos,
                     cache: false,
                     contentType: false,
                      processData: false,
                      dataType: 'json',
                     success:function(respuesta){

                     console.log("respuesta",respuesta);
                       if(respuesta > 0 ){
                        
                             Swal.fire({
                                 position:'center',
                                 icon:'success',
                                 title: 'Se registraron '  + respuesta + ' contactos correctamente!',
                                 showConfirmButton: false,
                                 timer: 2500
                             })

                              $("#btncargar").prop("disabled",false);
                              $("#img_carga").attr("style","display:none");
                        }                
             }
          
         });

       }

     })
   })
   
</script>
</body>
</html>
