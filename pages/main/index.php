<?php
  if(isset($_GET['trang'])){
    $page = $_GET['trang'];

  }else{
    $page= 1;
  }
  if($page == '' || $page == 1){
    $begin = 0;
  }else{
    $begin=($page*5)-5;
  }
         $sql_product = "SELECT *FROM tbl_sanpham,tbl_danhmuc WHERE  tbl_sanpham.id_danhmuc =tbl_danhmuc.id_danhmuc 
         ORDER BY tbl_sanpham.id_sanpham  DESC LIMIT $begin,5";
         $query_pro = mysqli_query($mysqli,$sql_product);
        //  $row_title= mysqli_fetch_array($query_pro);

         //get ten danh muc

        
             
      
?>

<h3>Sản phẩm mới nhất</h3>
             
                    <ul class="Product_list">
                        <?php
                        while($row = mysqli_fetch_array($query_pro)){                    
                        ?>
                      
                         <li>
                            <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">                         
                                <img  src="web_mysqli/admincp/modules/quanlysanpham/uploads/<?php echo $row['hinhanh']?>">
                                <p  class="title_product">Tên sản phẩm: <?php echo $row['tensp']?></p>
                                <p  class="price_product">Giá: <?php echo number_format($row['giasp'],0,',','.') .'vnđ' ?></p>
                                <p style="text-align:center;color:red "><?php echo $row['tendanhmuc'] ?> </p>
                                </a>  
                                </li>
                          
                              <?php
                            }
                              ?>
                              </ul>        
                    <div style="clear:both"></div>
                    <style>
                          ul.list_trang {
                            list-style: none;
                            padding: 0;
                            margin: 0px;
                        }
                        ul.list_trang li{
                          float: left;
                          padding: 5px 13px;
                          margin: 5px;
                          background: burlywood;
                          display: block;

                        }
                        ul.list_trang li a{
                          color:#000;
                         
                          text-align:center;
                          text-decoration:none;
                        }
                    </style>
                      <?php
                      $sql_trang =mysqli_query($mysqli,"SELECT * FROM tbl_sanpham ") ;
                      $row_count = mysqli_num_rows($sql_trang);
                       $trang =  ceil($row_count/5);
                    ?>
                    <p>Trang hiện tại :<?php echo $page ?>/<?php echo $trang?> </p>
                  
                    <ul class="list_trang">
                      <?php
                      // echo $page;
                        for($i = 1;$i<=$trang;$i++){
                          
                        
                      ?>
                      <li <?php if($i ==$page)  { echo'style="background:red"';}else{echo '';}  ?>><a  href="index.php?trang=<?php echo $i;?>"><?php echo $i ?></a> </li>
                      <?php
                        }
                      ?>

                    </ul>