<?php
	header("Content-Type: text/html;charset=utf-8");


	$con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "连接失败";
		exit();
	}

	$sql="select * from phone2";
	$result=mysqli_query($con,$sql);

	$row=mysqli_fetch_all($result);

	$k=json_encode($row);
	print_r($k);


	// if($name&&$pwd){
	// 	$sql="select * from person where username='$name' and password='$pwd'";
	// 	$result=mysqli_query($con,$sql);
	// 	$row=mysqli_fetch_row($result);

	// 	// print_r($row);
	// 	if($row){
	// 		header("refresh:0;url='../index.html'");
	// 	}else{
	// 		echo "<script>
	// 				alert('用户名或密码错误');history.back();
	// 			  </script>";
	// 	}
	// }else{
	// 	echo "<script>
	// 				alert('用户名或密码不能为空');history.back();
	// 		 </script>";
	// }
	mysqli_close ($con);

?>