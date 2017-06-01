/**
 * Created by Administrator on 2017/5/17.
 */
$(function () {
	
	//发送ajax请求
	$.ajax({
		url:"info/phone.php",
		dataType:"json",
		success:function(data){
			var obj={
				souse:data
			};
			var result=template("template",obj);
			$(".myPhone .myPhone-shop .i1").append(result);


			// 点击购买页面
			var $phone=$(".myPhone .i1 .myPhone-shop-box");
			// var oText1=obj.souse[0].text;
		 	$phone.on("click",function () {
		 		var a=$(this).index()-1;
		 		var b=1;
		 		window.location.href="htm/information.html?index1="+a+"&index2="+b; 
		 		
		 	})


		}
	});
	$.ajax({
		url:"info/ip.php",
		dataType:"json",
		success:function(data){
			var obj={
				souse:data
			};
			var result=template("template",obj);
			$(".myPhone .myPhone-shop .i2").append(result);

			// 点击购买页面
			var $phone=$(".myPhone .i2 .myPhone-shop-box");
			// var oText1=obj.souse[0].text;
		 	$phone.on("click",function () {
		 		var a=$(this).index()-1;
		 		var b=0;
		 		window.location.href="htm/information.html?index1="+a+"&index2="+b; 
		 		
		 	})

		}
	});
	$.ajax({
		url:"info/ry.php",
		dataType:"json",
		success:function(data){
			var obj={
				souse:data
			};
			var result=template("template",obj);
			$(".myPhone .myPhone-shop .i3").append(result);


			// 点击购买页面
			var $phone=$(".myPhone .i3 .myPhone-shop-box");
			// var oText1=obj.souse[0].text;
		 	$phone.on("click",function () {
		 		var a=$(this).index()-1;
		 		var b=2;
		 		window.location.href="htm/information.html?index1="+a+"&index2="+b; 
		 		
		 	})
		}
	});
	$.ajax({
		url:"info/vv.php",
		dataType:"json",
		success:function(data){
			var obj={
				souse:data
			};
			var result=template("template",obj);
			$(".myPhone .myPhone-shop .i4").append(result);


			// 点击购买页面
			var $phone=$(".myPhone .i4 .myPhone-shop-box");
			// var oText1=obj.souse[0].text;
		 	$phone.on("click",function () {
		 		var a=$(this).index()-1;
		 		var b=3;
		 		// $.ajax({
					// url:"info/info1.php",
					// type:"post",
					// dataType:"json",
					// success:function(data){
					// 	// json字符窜转对象
					// 	// var obj=$.parseJSON(data[0][0]);
					// 	// console.log(data);
					// 	// var oText2=$.parseJSON(data[a][b]).text;
					// 	window.location.href="htm/information.html?index1="+a+"&index2="+b; 
					// }
		 		// })
		 		window.location.href="htm/information.html?index1="+a+"&index2="+b; 
		 		
		 	})
		}
	});


	
	
});