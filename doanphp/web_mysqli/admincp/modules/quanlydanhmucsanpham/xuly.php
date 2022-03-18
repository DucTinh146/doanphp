<?php
include ('../../config/config.php');
    $tenloaisp= $_POST['tendanhmuc'];
    $thutusp= $_POST['thutu'];
    
    

    if(isset($_POST['themdanhmuc']))
    {
        $sql_them="INSERT INTO tbl_danhmuc(tendanhmuc,thutu) value('".$tenloaisp."','".$thutusp."')";

        mysqli_query($mysqli,$sql_them);
        header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');
    }elseif(isset($_POST['suadanhmuc'])){
            $sql_update="UPDATE tbl_danhmuc SET tendanhmuc='".$tenloaisp."',thutu='".$thutusp."' WHERE id_danhmuc='$_GET[iddanhmuc]'";

            mysqli_query($mysqli,$sql_update);
            header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');
    }else{
        $id=$_GET['iddanhmuc'];
        $sql_xoa="DELETE FROM tbl_danhmuc where id_danhmuc= '". $id."' ";
        mysqli_query($mysqli,$sql_xoa);
        header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');

    }

?>