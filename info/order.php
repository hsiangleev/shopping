<?php
	header("Content-Type: text/html;charset=utf-8");
	$name=$_POST["username"];
	$tel=$_POST["telphone"];
	$adr=$_POST["adress"];
	$user=$_POST["user"];

	$con=mysqli_connect("localhost","root","056176","shopping");
	if(!$con){
		echo "数据库连接失败";
		exit();
	}

	//判断是否为空
	if($name&&$tel&&$adr&&$user){
		// $sql="insert into person (username,telphone,adress) values ('$name','$tel','$adr') where username='$user'";
		$sql="update person set name='$name' and telphone='$tel' and adress='$adr' where username='$user'";
		$succe=mysqli_query($con,$sql);
		if($succe){
			header('refresh:0;url="../htm/orderJump.html"');
		}
		else{
			echo "失败";
		}
	}else{
		echo "<script>
					alert('请输入完整信息');
					history.back();
			  </script>";
	}

	mysqli_close ($con);


?>