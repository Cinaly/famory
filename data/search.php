<?php
header("Content-Type:application/json");
require("init.php");
$output=[
    "pageCount"=>0,
    "totalCount"=>0,
    "currentPage"=>0,
    "list"=>[]
];
@$kw=$_REQUEST["kw"];
$pageSize=8;
$pageCount=0;
$totalCount=0;
@$currentPage=$_REQUEST["currentPage"];
if(!$currentPage){
    $currentPage=1;
}
$start=($currentPage-1)*$pageSize;
if($kw){
    $sql="select pid,pname,price,img from products where pname like '%$kw%' limit ".$start.",".$pageSize;
    $sql1="select count(*) count from products where pname like '%$kw%'";

}else{
    $sql="select pid,pname,price,img from products limit ".$start.",".$pageSize;
    $sql1="select count(*) count from products";
}
$result=sql_execute($sql);
$totalCount=sql_execute($sql1)[0]["count"];
$output["list"]=$result;
$output["currentPage"]=$currentPage;

$output["totalCount"]=$totalCount;
$output["pageCount"]=ceil($totalCount/$pageSize);

echo json_encode($output);
?>