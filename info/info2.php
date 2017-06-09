<?php 
	// header('content-type:text/html; charset= utf-8');
 //    $url=$_POST["name"];

 //    $con=mysqli_connect("localhost","root","056176","shopping");
	// if(!$con){
	// 	echo "连接失败";
	// 	exit();
	// }

	// $sql="select * from phone1 wherr ip1 like ''";
	// $result=mysqli_query($con,$sql);

	// $row=mysqli_fetch_all($result);

	// $k=json_encode($row);
	// print_r($k);

	// mysqli_close ($con);

	header("Content-Type: text/html;charset=utf-8");

	$a=$_POST["index1"];
	$b=$_POST["index2"];

	$con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "连接失败";
		exit();
	}
	$sql="insert into test (a,b) values ('$a','$b')";
	$succe=mysqli_query($con,$sql);
	if($succe){
		echo "失败";
	}
	mysqli_close ($con);

 ?>