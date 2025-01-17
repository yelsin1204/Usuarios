

 <?php

 $columna = null;
 $valor = null;

 $archivos = archivosC::verarchivosC($columna, $valor);
 $totalArchivos = count($archivos);


 $consultores = funcionariosC::verfuncionariosC($columna, $valor);
 $totalConsultores= count($consultores) ;


 $total=SecretariasC::verTotalC($columna, $valor);
 $totalAdministradores=count($total);



 $totalS=SecretariasC::verTotalS($columna, $valor);
 $totalSecretarias=count($totalS);

 ?>



 <div class="content-wrapper " style="background: url('Vistas/img/forest2.3.png') no-repeat; background-size: cover; ">

  <section class="content-header">
    <h1>
      Inicio
      <small></small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> </a></li>
      <li><a href="#"></a></li>
      <li class="active"></li>
    </ol>
  </section>

  
  <section class="content" class="center" >
    
    <!-- Small boxes (Stat box) -->
    <div class="box" >
  
      <div class="box-header with-border" >

        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box" style="background-color: #F781D8; color: white;">
              <div class="inner">
                <h3><?php echo number_format($totalConsultores);  ?></h3>

                <p>Número total Contactos</p>
              </div>
              <div class="icon">
                <i class="fa fa-users"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box" style="background-color: #BDBDBD; color: white;">
              <div class="inner">
                <h3><?php echo number_format($totalArchivos);  ?></h3>

                <p>Número total Archvivos</p>
              </div>
              <div class="icon">
                <i class="fa fa-file"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3><?php echo number_format($totalAdministradores);  ?></h3>

                <p>Número Total de Editores</p>
              </div>
              <div class="icon">
               <i class=" fa fa-user"></i>
             </div>
             
           </div>
         </div>
         <!-- ./col -->
         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
             <h3><?php echo number_format($totalSecretarias);  ?></h3>

             <p>Número Total  de Lectores</p>
           </div>

           <div class="icon">
            <i class="fa fa-book"></i>
           
          </div>
          
        </div>
      </div>

      <!-- ./col -->
    </div>
    <!-- /.row -->
    <!-- Main row -->
  </div>
</section>

</div>

