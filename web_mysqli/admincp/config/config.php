<?php
$mysqli = new mysqli("localhost","root","","web_mysqli");

// Check connection
if ($mysqli->connect_errno) {
  echo "kết nối lỗi: " . $mysqli->connect_error;
  exit();
}
?>