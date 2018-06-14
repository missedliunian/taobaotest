<?php

$conn=mysql_connect('localhost','root');
mysql_select_db('taobao');//数据库名称
mysql_query('SET NAMES UTF8');//设置编码方式


	if(isset($_GET['user'])){
		$username=$_GET['user'];
		$password=md5($_GET['pass']);
	}


	$result=@mysql_query("select * from registor where username='$username' and password='$password'");
	if(mysql_fetch_array($result)){//有值，登陆通过
		echo true;
	}else{
		echo 'username or password is error';
	}

?>