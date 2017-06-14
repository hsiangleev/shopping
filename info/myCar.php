<?php
	header("Content-Type: text/html;charset=utf-8");


	$con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "连接失败";
		exit();
	}

	$sql="select * from test";
	$result=mysqli_query($con,$sql);

	$row=mysqli_fetch_all($result);

	$k=json_encode($row);
	print_r($k);


	mysqli_close ($con);

?>