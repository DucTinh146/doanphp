
<?php
    $sql_sua_sanpham = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$_GET[idsanpham]' LIMIT 1";
    $query_sua = mysqli_query($mysqli,$sql_sua_sanpham);
?>

<p>Sửa sản phẩm</p>
<table border="1" width="100%" style="border-collapse: collapse">
 <form method="POST" action="modules/quanlysanpham/xuly.php?idsanpham=<?php echo $_GET['idsanpham'] ?>" enctype="multipart/form-data">

<?php
    while($row =mysqli_fetch_array($query_sua)){

    
?>
        <tr>
            <td>Tên sản phẩm</td>
        <td><input type="text" value="<?php echo $row['tensp'] ?>" name="tensanpham" rows="10px"></td>
        </tr>
        <tr>
            <td>Mã sản phẩm</td>
        <td><input type="text" value="<?php echo $row['masp'] ?>" name="masanpham" rows="10px"></td>
        </tr>
        <tr>
            <td>Giá sản phẩm</td>
        <td><input type="text" value="<?php echo $row['giasp'] ?>" name="giasanpham" rows="10px"></td>
        </tr>
        <tr>
            <td>Số lượng</td>
        <td><input type="text" value="<?php echo $row['soluong'] ?>" name="soluong" rows="10px"></td>
        </tr>
        <tr>
            <td>Hình ảnh </td>
            <td>
            <input type="file"  name="hinhanh" >
            <img src="modules/quanlysanpham/uploads/<?php echo $row['hinhanh'] ?>" width="150px">
            </td>
            

        </td>
        
        </tr>
        <tr>
            <td>Tóm tắt </td>
        <td><textarea rows="10"  width="100%" name="tomtat" style="resize:none" ><?php $row['tomtat']  ?></textarea><?php echo $row['tomtat']?></td>
        </tr>
        <tr>
            <td>Nội dung</td>
        <td><textarea rows="10" width="100%" name="noidung" style="resize:none"><?php $row['noidung']  ?></textarea><?php echo $row['noidung']?></td>
        </tr>
        <tr>
            <td>Danh mục sản phẩm</td>
            <td>
                <select name="danhmuc">
                    <?php
                        $sql_danhmuc = "SELECT *FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
                        $query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
                        while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
                            if($row_danhmuc['id_danhmuc']==$row['id_danhmuc']){
                    ?>
                        <option selected value="<?php echo $row_danhmuc['id_danhmuc']?>"><?php echo $row_danhmuc['tendanhmuc']?></option>
                   <?php
                        }else{
                                ?>
                        <option  value="<?php echo $row_danhmuc['id_danhmuc']?>"><?php echo $row_danhmuc['tendanhmuc']?></option>
                                <?php
                        }
                    }
                   ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Tình trạng</td>
            <td>
                <select name="tinhtrang">
                    <?php
                        if($row['tinhtrang']==1){     
                    ?>
                    <option value="1" selected>Kích hoạt</option>
                    <option value="0">Ẩn</option>
                    <?php
                    }else{
                     ?>
                    <option value="1">Kích hoạt</option>
                    <option value="0" selected>Ẩn</option>
                          <?php
                        }
                          ?>

                </select>
            </td>
        </tr>
        
        <tr>
            
        <td colspan="2"><input type="submit" name="suasanpham" value="Sửa sản phẩm"></td>
        </tr>
  </form>
  <?php
    }
  ?>
</table>