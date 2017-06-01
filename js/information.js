/**
 * Created by Administrator on 2017/5/17.
 */
$(function () {
	
	$con=$(".container .container-word");
	//发送ajax请求
	$.ajax({
		url:"../info/info1.php",
		type:"post",
		dataType:"json",
		success:function(data){
			//获取a,b对应坐标

			var k=location.search;
			var arr=k.split("&");
			var arr1=arr[0].split("=");
			var a=arr1[1];
			var arr2=arr[1].split("=");
			var b=arr2[1];


			// var str=location.href;
			// var oArr=str.split("index1=");
			// console.log(oArr);
			// var ind=oArr[1]-1;
			// console.log(ind);
			// json字符窜转对象
			var obj=$.parseJSON(data[a][b]);

			// console.log($.parseJSON(data[0][1]));

			$("#img1").attr("src",obj.url);
			$("#img2").attr("src",obj.url);
			$con.find("span>h3").text("¥"+obj.price);
			$con.find("h1").text(obj.h1);
			$con.find("h2").text(obj.h2);
			var arr1=obj.color.split(",");
			var aLi1=$con.find(".f1 li");
			for(var i=0;i<aLi1.length;i++){
				$(aLi1[i]).text(arr1[i]);
			}

			var arr2=obj.type.split(",");
			var aLi2=$con.find(".f2 li");
			for(var i=0;i<aLi2.length;i++){
				$(aLi2[i]).text(arr2[i]);
			}

			var arr3=obj.high.split(",");
			var aLi3=$con.find(".f3 li");
			for(var i=0;i<aLi3.length;i++){
				$(aLi3[i]).text(arr3[i]);
			}

			
			
		}
	});

	//关闭广告
	var $span=$(".top-banner");
	$span.find("span").on("click",function () {
		 $span.slideUp(800);
	});

	//购买特效
	var con=$(".container");
	function addCurrent (ele) {
		var arrLi1=con.find(ele);
		arrLi1.on("click",function () {
			if($(this).text()!=""){
				$(this).addClass("current").siblings("li").removeClass("current");
			}
			
		})
	}
	addCurrent(".f1 li");
	addCurrent(".f2 li");
	addCurrent(".f3 li");

	var btn=con.find(".container-word-num button");
	var num=1;
	btn.eq(0).on("click",function(){
		if(num>1){
			num--;
			btn.eq(1).text(num);
		}else{
			alert("数量不能小于1");
		}
		
	})
	btn.eq(2).on("click",function(){
		num++;
		btn.eq(1).text(num);
	})
		
});