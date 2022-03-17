

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
   <link rel="stylesheet" href="css/styleadmincp.css" type="text/css">
  

</head>
<?php
    session_start();
    if(!isset($_SESSION['dangnhap'])){
        header('Location:login.php');

    }
?>
<body>
    <h3 class="title_admin">Xin chào đến trang ADMIN</h3>
    <div class="wrapper">
    <?php
        include("config/config.php");
        include("modules/header.php");
        include("modules/menu.php");
        include("modules/main.php");
        include("modules/footer.php");
     ?>
    </div>
    
    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="//cdn.ckeditor.com/4.17.2/full/ckeditor.js"></script>
   <script>
                        CKEDITOR.replace('thongtinlienhe');

                        CKEDITOR.replace('tomtat');
                        CKEDITOR.replace('noidung');
                        // CKEDITOR.replace('hinhanh');


                </script>
</body>
</html>