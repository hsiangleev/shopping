<?php
	header('content-type:text/html; charset= utf-8');
    $str=file_get_contents("phoneSouse.json");
	$file=json_decode($str);
	$newArr=array();
	for($i=6;$i<12;$i++){
		$newArr[$i-6]=$file[$i];
	}
	echo json_encode($newArr);
	
?>
