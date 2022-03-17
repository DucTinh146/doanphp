<p>Liệt kê danh mục sản phẩm</p>

<?php
    $sql_lietke_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY thutu DESC";
    $query_lietke = mysqli_query($mysqli,$sql_lietke_danhmuc);
?>
<table style="width:100%" border="1" style="border-collapse: collapse;">
  <tr>
      <th>ID</th>
    <th>Tên danh mục</th>
    <th>Quản lý </th>
  </tr>
  <?php
    $i=0;
    while($row = mysqli_fetch_array($query_lietke)){
        $i++;
    
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tendanhmuc'] ?></td>
    <td>
            <a href="modules/quanlydanhmucsanpham/xuly.php?iddanhmuc=<?php echo $row['id_danhmuc'] ?>">Xóa</a>|<a href="?action=quanlydanhmucsanpham&query=sua&iddanhmuc=<?php echo $row['id_danhmuc'] ?>">Sửa</a>
    </td>
    
  </tr>
  <?php
    }
  ?>
  
</table>