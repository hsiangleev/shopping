<?php
	header("Content-Type: text/html;charset=utf-8");
	
	$content=$_POST["content"];
	$a=$_POST["index1"];
	$b=$_POST["index2"];

	$con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "数据库连接失败";
		exit();
	}

	$sql="insert into info (content,a,b) values ('$content','$a','$b')";
	$succe=mysqli_query($con,$sql);
	// if($succe){
	// 	header('refresh:0;url="../htm/orderJump.html"');
	// }
	echo $content;

	mysqli_close ($con);


?>