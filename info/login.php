<?php
	header("Content-Type: text/html;charset=utf-8");

	$name=$_POST["username"];
	$pwd=$_POST["password"];

	$con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "连接失败";
		exit();
	}

	if($name&&$pwd){
		$sql="select * from person where username='$name' and password='$pwd'";
		$result=mysqli_query($con,$sql);
		$row=mysqli_fetch_row($result);

		// print_r($row);
		if($row){
			header("refresh:0;url='../index.html?name=$name'");
		}else{
			echo "<script>
					alert('用户名或密码错误');history.back();
				  </script>";
		}
	}else{
		echo "<script>
					alert('用户名或密码不能为空');history.back();
			 </script>";
	}
	mysqli_close ($con);

?>