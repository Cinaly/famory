<?php
header("Content-Type:application/json");
require("init.php");
$output=[
    "pageCount"=>0,
    "totalCount"=>0,
    "currentPage"=>0,
    "list"=>[]
];
$pageSize=6;
$pageCount=0;
$totalCount=0;
@$currentPage=$_REQUEST["currentPage"];
if(!$currentPage){
    $currentPage=1;
}

$start=($currentPage-1)*$pageSize;
$sql="select * from fashion_week limit ".$start.",".$pageSize;
$sql1="select count(*) count from fashion_week";

$result=sql_execute($sql);
$totalCount=sql_execute($sql1)[0]["count"];
$output["list"]=$result;
$output["currentPage"]=$currentPage;

$output["totalCount"]=$totalCount;
$output["pageCount"]=ceil($totalCount/$pageSize);

echo json_encode($output);
?>