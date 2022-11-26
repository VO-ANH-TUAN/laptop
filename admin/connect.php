<?php

$conn=mysqli_connect('localhost','root','','shoplaptop');
mysqli_set_charset($conn,'UTF8');
if(mysqli_connect_errno())
{
	echo "kết nối không thành công";
}
?>