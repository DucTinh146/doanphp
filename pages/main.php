<div id="main">
    <div class="row">
    <!-- large midle -->
    <div class="col-lg-3 col-md-2 col-sm-12 col-xs-12">
            <?php
                include("slidebar/sidebar.php");
            ?>
         </div>
    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">

            <div class="maincontent">
               <?php
                    if(isset($_GET['quanly']))
                    {
                        $tam = $_GET['quanly'];
                    }else{
                        $tam='';
                    }
                    if($tam == 'danhmucsanpham'){
                        include("main/danhmuc.php");
                    }else if($tam == 'giohang'){
                        include("main/giohang.php");

                    }else if($tam == 'danhmucbaiviet'){
                        include("main/danhmucbaiviet.php");
                    }else if($tam == 'baiviet'){
                        include("main/baiviet.php");
                    }else if($tam == 'tintuc'){
                        include("main/tintuc.php");
                    }else if($tam == 'dangky'){
                        include("main/dangky.php");
                    }else if($tam == 'dangnhap'){
                        include("main/dangnhap.php");

                    }
                    else if($tam == 'timkiem'){
                        include("main/timkiem.php");

                    }
                    
                    else if($tam == 'lienhe'){
                        include("main/lienhe.php");
                    }
                    else if($tam == 'sanpham'){
                        include("main/sanpham.php");
                    }
                    else if($tam == 'thanhtoan'){
                        include("main/thanhtoan.php");
                    }
                    else if($tam == 'camon'){
                        include("main/camon.php");
                    } else if($tam == 'thaydoimatkhau'){
                        include("main/thaydoimatkhau.php");

                    }else{
                        include("main/index.php");
                    }
               ?>
            </div>  
            </div>  
                </div>
        </div>