<?php
    header("Content-Type:application/json");
    require("init.php");
    $sql="select img from banner";
    $result=sql_execute($sql);
    echo json_encode($result);
?>