<?php
header("Content-Type:application/json");
require("init.php");

$sql="select * from shop";
$result=sql_execute($sql);

echo json_encode($result);
?>