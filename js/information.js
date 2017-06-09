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
			//添加购物车
			var oBtn=$(".container .container-word-buy button");
			oBtn.eq(1).on("click",function () {
				// window.location.href="../info/car.php"; 

				var cook=document.cookie;
				if(cook==""){
					alert("您还尚未登录，请登录");
				}else{
					$.ajax({
						url:"../info/info2.php",
						type:"post",
						data:"index1="+a+"&index2="+b,
						success:function (data) {
							alert("添加成功");
							// window.location.href="test.php"; 
						},
						error:function (XMLHttpRequest, textStatus, errorThrown) {
							console.log(errorThrown);
						}
					})
				}
			})
			
		}
	});

	//设置个人登录
	var btn=$(".header-nav button");
	var cook=document.cookie;
	
	if(cook!=""){
		var arr=cook.split(";");
		var name=arr[0].split("=")[1];
		var pwd=arr[1].split("=")[1];
		// console.log(name+pwd);

		btn.eq(0).text(name+"欢迎您!!!");
		btn.eq(0).parent("a").attr("href","javascript:void(0);")
		btn.eq(1).text("退出登录");
		btn.eq(1).parent("a").attr("href","javascript:void(0);");
		btn.eq(1).on("click",function(){
			btn.eq(0).text("登录");
			btn.eq(0).parent("a").attr("href","../login.html");
			btn.eq(1).text("注册");
			btn.eq(1).parent("a").attr("href","javascript:void(0);");
			// btn.eq(1).parent("a").attr("href","register.html");
			delAllCookie();
			history.go(0); 
		})

		
	}
	//清除cookie
	function delAllCookie(){    
        var myDate=new Date();    
        myDate.setTime(-1000);//设置时间    
        var data=document.cookie;    
        var dataArray=data.split("; ");    
        for(var i=0;i<dataArray.length;i++){    
             var varName=dataArray[i].split("=");    
             document.cookie=varName[0]+"=''; expires="+myDate.toGMTString();    
        }    
                          
    }          


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

	var aBtn=con.find(".container-word-num button");
	var num=1;
	aBtn.eq(0).on("click",function(){
		if(num>1){
			num--;
			aBtn.eq(1).text(num);
		}else{
			alert("数量不能小于1");
		}
		
	})
	aBtn.eq(2).on("click",function(){
		num++;
		aBtn.eq(1).text(num);
	})


	$(".nav-cen a").eq(2).click(function () {
		var cook=document.cookie;
		if(cook==""){
			alert("您还尚未登录，请登录");
		}else{
			window.location.href="car.html"; 
		}
	})
	
});