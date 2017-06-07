<?php
	header('content-type:text/html; charset= utf-8');

	$sourse=$_POST["aa"];
	echo $sourse;
	
	
	// $con=mysqli_connect("localhost","root","056176","shopping");
	// if(!$con){
	// 	echo "数据库连接失败";
	// 	exit();
	// }

	//判断是否为空
	// if($name&&$pwd&&$repwd){
	// 	if($pwd===$repwd){
	// 		$sql="insert into person (username,password) values ('$name','$pwd')";
	// 		$succe=mysqli_query($con,$sql);
	// 		if($succe){
	// 			header('refresh:0;url="../htm/jump.html"');
	// 		}
	// 	}else{
	// 		echo "<script>
	// 				alert('输入密码不一致');
	// 				history.back();
	// 		  </script>";
	// 	}
	// }else{
	// 	echo "<script>
	// 				alert('请输入完整信息');
	// 				history.back();
	// 		  </script>";
	// }

	// mysqli_close ($con);

?>