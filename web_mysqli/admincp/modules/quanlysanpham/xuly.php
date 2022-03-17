<?php
include ('../../config/config.php');
    $tenloaisp= $_POST['tensanpham'];
    $masp= $_POST['masanpham'];
    $giasp= $_POST['giasanpham'];
    $soluongsp= $_POST['soluong'];
     //xu ly hinh anh

     $hinhanh=$_FILES['hinhanh']['name'];
     $hinhanh_tmp=$_FILES['hinhanh']['tmp_name'];
     $hinhanh =time().'_'.$hinhanh;
    $tomtat= $_POST['tomtat'];
    $noidung= $_POST['noidung'];
    $tinhtrang= $_POST['tinhtrang'];
    $danhmuc= $_POST['danhmuc'];

         

    
    if(isset($_POST['themsanpham']))
    {
        $sql_them="INSERT INTO tbl_sanpham(tensp,masp,giasp,soluong,hinhanh,tomtat,noidung,tinhtrang,id_danhmuc) value('".$tenloaisp."','".$masp."','".$giasp."','".$soluongsp."',
        '".$hinhanh."','". $tomtat."','".$noidung."','". $tinhtrang."','".$danhmuc."')";

        mysqli_query($mysqli,$sql_them);
        move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);

        header('Location:../../index.php?action=quanlysanpham&query=them');
    }elseif(isset($_POST['suasanpham'])){
        if(!empty($_FILES['hinhanh']['name'])){
            move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
            $sql = "SELECT *FROM tbl_sanpham WHERE id_sanpham= '$_GET[idsanpham]' LIMIT 1";
            $query = mysqli_query($mysqli,$sql);
            while($row = mysqli_fetch_array($query)){
                unlink('uploads/'.$row['hinhanh']);
            }
            $sql_update="UPDATE tbl_sanpham SET tensp='".$tenloaisp."',masp='".$masp."',giasp='".$giasp."',
            soluong='".$soluongsp."',hinhanh='".$hinhanh."',tomtat='".$tomtat."',
            noidung='".$noidung."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."' WHERE id_sanpham='$_GET[idsanpham]'";

        }else{
            $sql_update="UPDATE tbl_sanpham SET tensp='".$tenloaisp."',masp='".$masp."',giasp='".$giasp."',
            soluong='".$soluongsp."',tomtat='".$tomtat."',
            noidung='".$noidung."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."' WHERE id_sanpham='$_GET[idsanpham]'";
        }
            

            mysqli_query($mysqli,$sql_update);
            header('Location:../../index.php?action=quanlysanpham&query=them');
        
            
    }else{
        $id=$_GET['idsanpham'];

        $sql = "SELECT *FROM tbl_sanpham WHERE id_sanpham= '$id' LIMIT 1";
        $query = mysqli_query($mysqli,$sql);
        while($row = mysqli_fetch_array($query)){
            unlink('uploads/'.$row['hinhanh']);
        }
        $sql_xoa="DELETE FROM tbl_sanpham where id_sanpham= '".$id."' ";
        mysqli_query($mysqli,$sql_xoa);
        header('Location:../../index.php?action=quanlysanpham&query=them');


    }

?>