<h3 style="text-align:center;text-transform:uppercase;">Tin tức mới nhất</h3>

<?php
         $sql_bv = "SELECT *FROM tbl_baiviet where tinhtrang =1 ORDER BY id DESC";
         $query_bv = mysqli_query($mysqli,$sql_bv);
        //  $row_title= mysqli_fetch_array($query_pro);

         //get ten danh muc

        //  $sql_cate = "SELECT *FROM tbl_danhmucbaiviet WHERE  tbl_danhmucbaiviet.id_baiviet = '$_GET[id]' LIMIT 1";
        //  $query_cate = mysqli_query($mysqli,$sql_cate);
        // //  $row_title= mysqli_fetch_array($query_cate);    
             
      
?>
                    <ul class="Product_list">
                        <?php
                            while($row_bv = mysqli_fetch_array($query_bv)){                        
                        ?>
                        <li>
                            <a href="index.php?quanly=baiviet&id=<?php echo $row_bv['id'] ?>">                         
                                <img src="web_mysqli/admincp/modules/quanlybaiviet/uploads/<?php echo $row_bv['hinhanh']?>">
                                <p  class="title_product">Tên bài viết: <?php echo $row_bv['tenbaiviet']?></p>
                                

                                
                                </a>  
                                <p style="margin:10px;" class="title_product">Tóm tắt: <?php echo $row_bv['tomtat']?></p>
                            </li>
                              <?php
                            }
                              ?>

                    </ul>