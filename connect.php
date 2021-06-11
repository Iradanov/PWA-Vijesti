<?php
header('Content-Type: text/html; charset=utf-8');
$servername= "localhost";
$username= "root";
$password= "";
$nazivbaze= "vijesti";

$db = mysqli_connect($servername,$username,$password,$nazivbaze) or
die('Pogreška pri povezivanju na MySQL server!'.mysqli_error());
mysqli_set_charset($db, "utf8");

?>