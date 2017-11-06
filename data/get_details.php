<?php
header("Content-Type:application/json");
require("init.php");
$pid=$_REQUEST["pid"];
$sql="select img from product_detail where pid=$pid";
$img=sql_execute($sql)[0]["img"];

$imgList=split(",",$img);
echo json_encode($imgList);
?>