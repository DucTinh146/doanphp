<?php
    
   
    if(isset($_POST['dangnhap'])){
        $email =$_POST['email'];
        $password =md5($_POST['password']);
        $sql = "SELECT * FROM tbl_dangky WHERE email ='".$email."' and matkhau='".$password."' LIMIT 1 ";
        $row = mysqli_query($mysqli,$sql);
        $count = mysqli_num_rows($row);
        if($count >0){
            $row_data = mysqli_fetch_array($row);
            $_SESSION['dangky']= $row_data['tenkhachhang'];
            $_SESSION['email'] = $row_data['email'];

            $_SESSION['id_khachhang']= $row_data['id_dangky'];

            header("Location:index.php?quanly=giohang");
        }else{
            echo '<p style="color:red">Email và mật khẩu không chính xác!  </p>';
            

        }

    }
?>

<form method="post" action="" autocomplete="off">
   <table border="1" class="table-login" style="text-align:center;border-colapse:colapse;">
        <tr>
            <td colspan="2"  >
                <h3>Đăng Nhập Khách Hàng</h3>

            </td>
        </tr>
        <tr>
            <td>Tài khoản</td>
            
            <td><input type="text" name="email" Placeholder="Email...."></td>
        </tr>
        <tr>
            <td>   Mật khẩu </td>
            <td><input type="password" name="password" Placeholder="Mật khẩu....."></td>
        </tr>
        <tr>
            <td colspan="2" ><input type="submit" name="dangnhap" value="Đăng Nhập"></td>
        </tr>
    </table>

   </form>