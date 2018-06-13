<?php

$conn=mysql_connect('localhost','root');

mysql_select_db('taobao');//数据库名称
mysql_query('SET NAMES UTF8');//设置编码方式

//轮播图数据
$scale=mysql_query("select * from scale");//选择表slideshow的所有记录
$arr=array();
for($i=0;$i<mysql_num_rows($scale);$i++){
    $arr[$i]=mysql_fetch_array($scale,MYSQLI_ASSOC);
}//将数据以数组形式保存




echo json_encode($arr);//将数据接口输出给前端

?>