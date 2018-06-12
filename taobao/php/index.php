<?php
//连接数据库
$conn=mysql_connect('localhost','root');

mysql_select_db('taobao');//数据库名称
mysql_query('SET NAMES UTF8');//设置编码方式

//轮播图数据
$slideshow=mysql_query("select * from slideshow");//选择表slideshow的所有记录
$slideshow_arr=array();
for($i=0;$i<mysql_num_rows($slideshow);$i++){
    $slideshow_arr[$i]=mysql_fetch_array($slideshow,MYSQLI_ASSOC);
}//将数据以数组形式保存

//生活数据
$live=mysql_query("select * from live");//选择表live的所有记录
$live_arr=array();
for($i=0;$i<mysql_num_rows($live);$i++){
    $live_arr[$i]=mysql_fetch_array($live,MYSQLI_ASSOC);

}
//goods
$goods=mysql_query("select * from goods");//选择表live的所有记录
$goods_arr=array();
for($i=0;$i<mysql_num_rows($goods);$i++){
    $goods_arr[$i]=mysql_fetch_array($goods,MYSQLI_ASSOC);

}

//shoping
$shoping=mysql_query("select * from shoping");//选择表live的所有记录
$shoping_arr=array();
for($i=0;$i<mysql_num_rows($shoping);$i++){
    $shoping_arr[$i]=mysql_fetch_array($shoping,MYSQLI_ASSOC);

}
//抢购
$runon=mysql_query("select * from runon");//选择表live的所有记录
$runon_arr=array();
for($i=0;$i<mysql_num_rows($runon);$i++){
    $runon_arr[$i]=mysql_fetch_array($runon,MYSQLI_ASSOC);

}

//店铺
$store=mysql_query("select * from store");//选择表live的所有记录
$store_arr=array();
for($i=0;$i<mysql_num_rows($store);$i++){
    $store_arr[$i]=mysql_fetch_array($store,MYSQLI_ASSOC);

}

//直播
$direct=mysql_query("select * from direct");//选择表live的所有记录
$direct_arr=array();
for($i=0;$i<mysql_num_rows($direct);$i++){
    $direct_arr[$i]=mysql_fetch_array($direct,MYSQLI_ASSOC);

}

//hotone
$hotone=mysql_query("select * from hotone");//选择表live的所有记录
$hotone_arr=array();
for($i=0;$i<mysql_num_rows($hotone);$i++){
    $hotone_arr[$i]=mysql_fetch_array($hotone,MYSQLI_ASSOC);

}

//创建复杂接口
class indexdata{
	}
$index=new indexdata();
$index->slideshow=$slideshow_arr;
$index->live=$live_arr;
$index->goods=$goods_arr;
$index->shoping=$shoping_arr;
$index->runon=$runon_arr;
$index->store=$store_arr;
$index->hotone=$hotone_arr;
$index->direct=$direct_arr;


echo json_encode($index);//将数据接口输出给前端
?>