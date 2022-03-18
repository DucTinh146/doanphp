<?php
    session_start();
    include("../../web_mysqli/admincp/config/config.php");
    require('../../mail/sendmail.php');
    $id_khachhang = $_SESSION['id_khachhang'];
    $code_order = rand(0,9999);
    $insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status) VALUE('".$id_khachhang."','".$code_order."',1)";
    $cart_query =mysqli_query($mysqli,$insert_cart);
    if($cart_query){
        //them gio hang chi tiet
            foreach($_SESSION['cart'] as $key => $value){
                $id_sanpham =$value['id'];
                $soluong =$value['soluong'];
                $insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
                mysqli_query($mysqli,$insert_order_details);
            }
            $tieude = "Đặt hàng website banquanao.com thành công! mã đơn hàng của bạn là: '".$code_order."'";
            // $tieude= "<h3>  </h3>";
            // $noidung= " <h4>Đơn hàng đã đặt bao gồm:</h4>";

                foreach($_SESSION['cart'] as $key => $val){
                    

                  $noidung ="<ul style='border:1px solid blue;margin:10px;'> 
                    <li>Đơn hàng của bạn bao gồm: </li>
                    <li>Tên sản phẩm:".$val['tensp']."</li>
                    <li>Mã sản phẩm:".$val['masp']."</li>
                    <li>Giá:".number_format($val['giasp'],0,',','.')."đ</li>
                    <li>Số lượng:".$val['soluong']."</li>
                    <li>Thành tiền:".number_format($val['soluong']*$val['giasp'],0,',','.')."đ</li> </ul>";     
                }

                $maildathang = $_SESSION['email'];
                $mail = new Mailer();
                $mail->dathangmail($tieude,$noidung,$maildathang);

    }
    //pha bo gio hang quay ve trang index
    unset($_SESSION['cart']);
    header('Location:../../index.php?quanly=camon');



?>