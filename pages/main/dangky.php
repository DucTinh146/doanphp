<?php
   
    if(isset($_POST['dangky'])){
        $tenkhachhang = $_POST['hovaten'];
        $email = $_POST['email'];
        $dienthoai = $_POST['dienthoai'];
        $diachi = $_POST['diachi'];

        $matkhau = md5($_POST['matkhau']);
        
        $sql_dangky = mysqli_query($mysqli,"INSERT INTO tbl_dangky(tenkhachhang,email,diachi,matkhau,dienthoai) 
        VALUE('".$tenkhachhang."','".$email."','".$diachi."','".$matkhau."','".$dienthoai."')");
        if($sql_dangky){
            echo '<p style="color:red">Bạn đã đăng kí thành công</p>';
            $_SESSION['dangky'] = $tenkhachhang;
            $_SESSION['email'] = $email;

            $_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);


            header("Location:index.php?quanly=giohang");
        }

        
    }

?>

<p>Đăng Ký Thành Viên</p>
<style>
    .dangky tr td{
        padding:5px;
    }

</style>
<form action="" method="post" >
<table class="dangky" border="1" width="50%" style="border-collapse: collapse;">
    <tr>
        <td>Họ tên</td>
        <td><input type="text" name="hovaten" size="50"></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><input type="text" name="email" size="50"></td>
    </tr>
    <tr>
        <td>Điện thoại</td>
        <td><input type="text" name="dienthoai" size="50"></td>
    </tr>
    <tr>
        <td>Địa chỉ</td>
        <td><input type="text" name="diachi" size="50"></td>
    </tr>
    <tr>
        <td>Mật khẩu</td>
        <td><input type="text" name="matkhau" size="50"></td>
    </tr>
    <tr>
        
        <td><input type="submit" name="dangky" value="Đăng Ký"></td>
        <td><a href="index.php?quanly=dangnhap">Đăng nhập nếu có tài khoản</a></td>

    </tr>

</table>
</form>