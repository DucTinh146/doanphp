<?php
    // session_start();
    // include('config/config.php');
    if(isset($_POST['doimatkhau'])){
        $taikhoan =$_POST['email'];
        $matkhaucu =md5($_POST['password_cu']);
        $matkhaumoi =md5($_POST['password_moi']);

        $sql = "SELECT * FROM tbl_dangky WHERE email ='".$taikhoan."' and matkhau='".$matkhaucu."' LIMIT 1 ";
        $row = mysqli_query($mysqli,$sql);
        $count = mysqli_num_rows($row);
        if($count >0){
            $sql_update = mysqli_query($mysqli,"UPDATE tbl_dangky SET  matkhau='".$matkhaumoi."'");
            echo '<script>alert("mật khẩu đã được thay đổi.")</script>';

            // $_SESSION['dangky']= $taikhoan;
            // header('Location:index.php');
        }else{
            echo '<script>alert("Tài khoản hoặc mật khẩu cũ không đúng vui lòng nhập lại.")</script>';
            // header("Location:login.php");
        }

    }
?>
  

<form class="form" method="post" action="" autocomplete="off">
   <table border="1" class="table-login" style="text-align:center;border-colapse:colapse;">
        <tr>
            <td colspan="2"  >
                <h3>Đổi mật khẩu</h3>

            </td>
        </tr>
        <tr>
            <td>Tài khoản</td>
            
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>   Mật khẩu cũ </td>
            <td><input type="password" name="password_cu"></td>
        </tr>
        <tr>
            <td>   Mật khẩu mới </td>
            <td><input type="password" name="password_moi"></td>
        </tr>
        <tr>
            <td colspan="2" ><input type="submit" name="doimatkhau" value="Đổi mật khẩu"></td>
        </tr>
    </table>

   </form>
   