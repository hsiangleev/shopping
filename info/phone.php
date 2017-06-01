<?php
	header('content-type:text/html; charset= utf-8');
    $str=file_get_contents("phoneSouse.json");
	$file=json_decode($str);
	$newArr=array();
	for($i=0;$i<6;$i++){
		$newArr[$i]=$file[$i];
	}
	echo json_encode($newArr);
	
?>