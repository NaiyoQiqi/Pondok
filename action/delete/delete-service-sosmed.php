<?php
require_once("../../config.php");
$delet_service=mysqli_query($conn, "TRUNCATE TABLE layanan_sosmed");
if($delet_service == TRUE){
    echo"success";
    
}else{
    echo"gagal";
}
?>