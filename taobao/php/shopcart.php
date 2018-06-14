<?php

$conn=mysql_connect('localhost','root');

mysql_select_db('taobao');//数据库名称
mysql_query('SET NAMES UTF8');//设置编码方式

//轮播图数据
$shopcart=mysql_query("select * from shopcarts");//选择表slideshow的所有记录
$arr=array();
for($i=0;$i<mysql_num_rows($shopcart);$i++){
    $arr[$i]=mysql_fetch_array($shopcart,MYSQLI_ASSOC);
}//将数据以数组形式保存


$id=$_GET['$id'];

echo json_encode($arr["$id"]);//将数据接口输出给前端

?>