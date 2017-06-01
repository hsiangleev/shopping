<?php
	header('content-type:text/html; charset= utf-8');
    $str=file_get_contents("phoneSouse.json");
	$file=json_decode($str);
	$newArr=array();
	for($i=12;$i<18;$i++){
		$newArr[$i-12]=$file[$i];
	}
	echo json_encode($newArr);
	
?>