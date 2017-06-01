<?php
	
	//检测用户名是否被注册页面
	header('content-type:text/html; charset= utf-8');

	$nameVal=$_POST["name"];
	// echo $nameVal;

	$con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "数据库连接失败";
		exit();
	}
	$sql="select * from person where username='$nameVal'";
	$result=mysqli_query($con,$sql);
	$row=mysqli_fetch_row($result);
	if($row){
		echo "true";
	}else{
		echo "false";
	}
	

	mysqli_close ($con);

?>