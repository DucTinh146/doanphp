<p>Liệt kê bài viết </p>

<?php
    $sql_lietke_baiviet = "SELECT * FROM tbl_baiviet,tbl_danhmucbaiviet Where tbl_baiviet.id_danhmuc =tbl_danhmucbaiviet.id_baiviet ORDER BY tbl_baiviet.id DESC";
    $query_lietkebv = mysqli_query($mysqli,$sql_lietke_baiviet);
?>
<table style="width:100%" border="1" style="border-collapse: collapse;">
  <tr>
    <th>ID</th>
    <th>Tên bài viết</th>
    <th>Hình ảnh</th>
    <th>Tóm tắt</th>
    <th>Trạng thái</th>
    <th>Danh mục </th>
    <th>Quản lý </th>
    

  </tr>
  <?php
    $i=0;
    while($row = mysqli_fetch_array($query_lietkebv)){
        $i++;
    
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tenbaiviet'] ?></td>
    <td><img src="modules/quanlybaiviet/uploads/<?php echo $row['hinhanh'] ?>" width="150px"></td>

    <td><?php echo $row['tomtat'] ?></td>
    <td><?php if($row['tinhtrang']==1){
        echo 'Kích hoạt';
    } else{
        echo 'Ẩn';
    } 
    ?>
    <td><?php echo $row['tendanhmuc_baiviet'] ?></td>

    </td>
       
      

        
    <td>
        <a href="modules/quanlybaiviet/xuly.php?idbaiviet=<?php echo $row['id'] ?>">Xóa</a>|<a href="?action=quanlybaiviet&query=sua&idbaiviet=<?php echo $row['id'] ?>">Sửa</a>
    </td>
    
  </tr>
  <?php
    }
  ?>
  
</table>