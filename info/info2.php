<?php 
	header('content-type:text/html; charset= utf-8');
    $url=$_POST["name"];

    $con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "连接失败";
		exit();
	}

	$sql="select * from phone1 wherr ip1 like ''";
	$result=mysqli_query($con,$sql);

	$row=mysqli_fetch_all($result);

	$k=json_encode($row);
	print_r($k);

	mysqli_close ($con);
 ?>