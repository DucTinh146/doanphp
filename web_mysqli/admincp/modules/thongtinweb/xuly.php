<?php
include ('../../config/config.php');
    $thongtinlienhe= $_POST['thongtinlienhe'];
    $id = $_GET['id'];
    
    

    // if(isset($_POST['thongtinlienhe']))
    // {
    //     $sql_them="INSERT INTO tbl_danhmucbaiviet(tendanhmuc_baiviet,thutu) value('".$tendanhmucbaiviet."','".$thutubaiviet."')";

    //     mysqli_query($mysqli,$sql_them);
    //     header('Location:../../index.php?action=quanlydanhmucbaiviet&query=them');
    // }
    // else
    if(isset($_POST['lienhe'])){
            $sql_update="UPDATE tbl_lienhe SET thongtinlienhe='".$thongtinlienhe."' WHERE id='".$id."'";

            mysqli_query($mysqli,$sql_update);
            header('Location:../../index.php?action=quanlyweb&query=capnhat');

    }
    // else{
    //     $id=$_GET['idbaiviet'];
    //     $sql_xoa="DELETE FROM tbl_danhmucbaiviet where id_baiviet= '". $id."' ";
    //     mysqli_query($mysqli,$sql_xoa);
    //     header('Location:../../index.php?action=quanlydanhmucbaiviet&query=them');


    // }

?>