

<p>
    Giỏ hàng
    <?php
        if(isset($_SESSION['dangky'])){
          echo 'xin chào: '.'<span style="color:red">' .$_SESSION['dangky'].'</span>';
          
        }
    
    ?>
</p>
<?php
    if(isset($_SESSION['cart'])){
      
    }
?>
<div class="container">
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step current"> <span> <a href="index.php?quanly=giohang" >Giỏ hàng</a></span> </div>
    <div class="step"> <span><a href="index.php?quanly=vanchuyen" >Vận chuyển</a></span> </div>
    <div class="step"> <span><a href="index.php?quanly=thongtinthanhtoan" >Thanh toán</a><span> </div>
    <!-- <div class="step"> <span><a href="index.php?quanly=donhangdadat" >Lịch sử đơn hàng</a><span> </div> -->
  </div>
  <!-- end Responsive Arrow Progress Bar -->
  <!-- <div class="nav clearfix">
    <a href="#" class="prev">Previous</a> |
    <a href="#" class="next pull-right">Next</a>
  </div> -->
</div>
<table style="width:100%;text-align:center;border-collapse:collapse;" border="1">
    <tr>
        <th>ID</th>
        <th>Mã sản phẩm</th>
        <th>Tên sản phẩm</th>
        <th>Hình ảnh</th>
        <th>Số lượng</th>
        <th>Giá sản phẩm</th>
        <th>Thành Tiền</th>
        <th>Quản Lý</th>

        

  </tr>
  <?php
    if(isset($_SESSION['cart'])){
        $i =0;
        $tongtien=0;
        foreach($_SESSION['cart'] as $cart_item){
        $thanhtien= $cart_item['soluong']* $cart_item['giasp'];
        $tongtien += $thanhtien;

            $i++;

    
  ?>
  <tr>
    <td><?php echo $i; ?></td>
    <td><?php echo $cart_item['masp']; ?></td>
    <td><?php echo $cart_item['tensp']; ?></td>
    <td><img  src="web_mysqli/admincp/modules/quanlysanpham/uploads/<?php echo $cart_item['hinhanh']; ?>" width="150px" ></td>
    <td>
        <a href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fas fa-plus fa-style"></i></a>
        <?php echo $cart_item['soluong']; ?>
        <a href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fas fa-minus fa-style"></i></a>

    
    </td>
    <td><?php echo number_format($cart_item['giasp'],0,',','.'). 'vnđ'; ?></td>
    <td><?php echo number_format($thanhtien,0,',','.'). 'vnđ';?></td>
    <td><a href="pages/main/themgiohang.php?xoa=<?php echo $cart_item['id'] ?>">Xóa</a></td>

  </tr>
  <?php
        }
?>
 <tr>
    <td colspan="8"  >
        <p style="float:left">Tổng tiền: <?php echo number_format($tongtien,0,',','.'). 'vnđ';?>
        <p style="float:right"><a href="pages/main/themgiohang.php?xoatatca=1">Xóa tất cả</a> </p>
        <div  style="clear:both"></div>
        <?php
          if(isset($_SESSION['dangky'])){
            ?>
                <p> <a href="index.php?quanly=vanchuyen">Hình thức vận chuyển</a></p>

            <?php
          }else{
            ?>
            <p> <a href="index.php?quanly=dangky">Đăng Ký Đặt Hàng</a></p>
            <?php
          }
        ?>
         
        

    </p>
</td>
   

    

  </tr>
<?php
    }else{
  ?>
   <tr>
    <td colspan="8" ><p>Hiện tại giỏ hàng trống</p></td>
    

  </tr>
  <?php
    }
  ?>
 
</table>