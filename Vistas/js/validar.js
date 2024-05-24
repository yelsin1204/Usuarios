// $(document).ready(function() {
//     $("#verificar").on('submit', function(e) {
//         e.preventDefault();
//         var usu = $("#name").val();
//         var contra = $("#clave").val();
//         // sin no se seleccione nada hacemos una alerta 
//         if (usu.length == 0 || contra.length == 0) {
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'llenar todos los campos',
//                 showConfirmButton: false,
//                 timer: 2500

//             })
//         }
//     })
// })







function verificar() {
    event.preventDefault();

    var usu = document.getElementById("name");

    var contra = document.getElementById("clave");


    // var usu = $("#name").val();
    // var contra = $("#clave").val();
    // if (usu.length == 0 || contra.length == 0) {
    //     return Swal.fire({
    //         position: 'center',
    //         title: 'complete los campos vacios',
    //         icon: 'warning',
    //         showConfirmButton: true,


    //     });

    // }
    console.log(usu)
    console.log(contra)
    return false;

}