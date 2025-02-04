<?php
require_once("../../config.php");
$delet_service=mysqli_query($conn, "DELETE FROM kategori_layanan");
if($delet_service == TRUE){
    echo"success";
    
}else{
    echo"gagal";
}
?>