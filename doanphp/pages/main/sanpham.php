<p>Chi tiết sản phẩm</p>
<?php
         $sql_chitiet = "SELECT *FROM tbl_sanpham,tbl_danhmuc WHERE  tbl_sanpham.id_danhmuc =tbl_danhmuc.id_danhmuc 
         AND tbl_sanpham.id_sanpham='$_GET[id]' LIMIT 1";
         $query_chitiet = mysqli_query($mysqli,$sql_chitiet);
        //  $row_title= mysqli_fetch_array($query_pro);

         //get ten danh muc
        while($row_chitiet = mysqli_fetch_array($query_chitiet)){

        
        
             
      
?>
<div class="wrapper_chitiet">
<div class="hinhanh_sanpham">
    <img width="80%" src="web_mysqli/admincp/modules/quanlysanpham/uploads/<?php echo $row_chitiet['hinhanh']?>">
</div> 
        <form method="POST" action="pages/main/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham']?>">
        <div class="chitiet_sanpham">
            <h3 style="margin:0">Tên sản phẩm: <?php echo $row_chitiet['tensp'] ?></h3>
            <p>Mã sản phẩm: <?php echo $row_chitiet['masp'] ?></p>
            <p>Giá: <?php echo number_format($row_chitiet['giasp'],0,',','.'). 'vnđ' ?></p>
            <p>Số lượng sản phẩm: <?php echo $row_chitiet['soluong'] ?></p>
            <p>Danh mục sản phẩm: <?php echo $row_chitiet['tendanhmuc'] ?></p>
            <p><input name="themgiohang" class="themgiohang" type="submit" value="Thêm giỏ hàng"></p>
        </div> 
        </form>



</div>
<div  class="clear">     
</div>
<div class="tabs">
  <ul id="tabs-nav">
    <li><a href="#tab1">Tóm tắt</a></li>
    <li><a href="#tab2">Nội dung</a></li>
    
    <li><a href="#tab3">Hình ảnh</a></li>
  </ul> <!-- END tabs-nav -->
  <div id="tabs-content">
    <div id="tab1" class="tab-content">
        <?php echo $row_chitiet['tomtat'] ?>
    </div>
    <div id="tab2" class="tab-content">
        <?php echo $row_chitiet['noidung'] ?>

    </div>
    <div id="tab3" class="tab-content">
    <img width="80%" src="web_mysqli/admincp/modules/quanlysanpham/uploads/<?php echo $row_chitiet['hinhanh']?>">


    </div>
    <!-- <div id="tab4" class="tab-content">
    </div> -->
  </div> <!-- END tabs-content -->
</div> <!-- END tabs -->

<?php
        }
?>