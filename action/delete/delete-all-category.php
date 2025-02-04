<?php
require_once("../../config.php");
$delet_cat=mysqli_query($conn, "TRUNCATE TABLE kategori_layanan");
if($delet_cat == TRUE){
    echo"success";
    
}else{
    echo"gagal";
}



$delet_service=mysqli_query($conn, "TRUNCATE TABLE layanan_sosmed");
if($delet_service == TRUE){
    echo"success";
    
}else{
    echo"gagal";
}

?>