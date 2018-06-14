<?php
$conn=mysql_connect('localhost','root');
mysql_select_db('taobao');//数据库名称
mysql_query('SET NAMES UTF8');//设置编码方式


$name=@$_GET['name'];

$result=mysql_query("select * from registor where username='$name'");

	if(mysql_fetch_array($result)){//满足条件有重复
		echo true;
	}else{//没有重复
		echo false;
	}

if(isset($_GET['submit_up'])){//不要直接使用submit，当有多个表单的时候就会出问题，设置提交的name值
		$username=$_GET['username'];//表单的name值获取
		$password=md5($_GET['password']);//表单的password值获取
		$email=$_GET['email'];//表单的email值获取
		$query="insert registor value(default,'$username','$password','$email')";
		mysql_query($query);
		header('location:../src/html/login.html');//php的跳转
}
?>