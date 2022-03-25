<?php

include 'connection.php';
    
session_start();

$login_name=$_POST['admin_name'];
$login_pass=$_POST['admin_password'];

$sql = "SELECT * FROM t_admin WHERE admin_name='".$login_name."' AND admin_pass='".$login_pass."'";
$consulta = mysqli_query($con, $sql);

if ($fila = mysqli_fetch_row($consulta)) {
    session_start();
    $_SESSION['admin_name']=$fila[1];
    $_SESSION['admin_type']=$fila[3];

    if ($_SESSION['admin_type']==1) {
        header('location:../perfil_superadmin.php');
    }//Fin del if...
    else{
        header('location:../perfil_admin.php');
}//Fin del else...
}//Fin del if...
else{
?>
<script>
alert("¡¡Los Datos Son Incorrectos!!")
location = "../login_admin.php"
</script>
<?php
}//Fin del else...
?>