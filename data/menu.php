<?php
header("Content-Type:application/json");
require("init.php");
$output=[];

$sql="select cid,cname from category";
$result=sql_execute($sql);

for($j=0;$j<count($result);$j++){
    $cid=$result[$j]["cid"];
    $output[$j]["cid"]=$cid;
    $output[$j]["cname"]=$result[$j]["cname"];
    $sql="select tid,tname from type where cid=$cid";
    $types=sql_execute($sql);
    $output[$j]["list"]=$types;
}
echo json_encode($output);
?>