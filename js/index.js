
$(function(){
	//关闭广告
	var $span=$(".top-banner");
	$span.find("span").on("click",function () {
		 $span.slideUp(800);
	})

	//跳转
	$(".search-right a").eq(0).click(function () {
		var cook=document.cookie;
		if(cook==""){
			alert("您还尚未登录，请登录");
		}else{
			window.location.href="htm/car.html"; 
		}
	})
	$(".nav-cen a").eq(1).click(function () {
		var cook=document.cookie;
		if(cook==""){
			alert("您还尚未登录，请登录");
		}else{
			window.location.href="htm/myOrder.html"; 
		}
	})
	$(".nav-cen a").eq(2).click(function () {
		var cook=document.cookie;
		if(cook==""){
			alert("您还尚未登录，请登录");
		}else{
			window.location.href="htm/car.html"; 
		}
	})


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
			btn.eq(0).parent("a").attr("href","login.html");
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

	// //设置个人登录
	// var btn=$(".header-nav button");
	// //获取url地址
	// var local=location.search;
	// var arr=local.split("=");
	// var name=arr[1];
	// if(local!==""){
	// 	btn.eq(0).text(name+"欢迎您!!!");
	// 	btn.eq(0).parent("a").attr("href","javascript:void(0);")
	// 	btn.eq(1).text("退出登录");
	// 	btn.eq(1).parent("a").attr("href","javascript:void(0);")
	// 	btn.eq(1).on("click",function(){
	// 		btn.eq(0).text("登录");
	// 		btn.eq(0).parent("a").attr("href","login.html");
	// 		btn.eq(1).text("注册");
	// 		// btn.eq(1).parent("a").attr("href","register.html");
	// 	})
	// }else{
	// 	btn.eq(0).text("登录");
	// 	btn.eq(0).parent("a").attr("href","login.html");
	// 	btn.eq(1).text("注册");
	// 	btn.eq(1).parent("a").attr("href","register.html");
	// }



	// 滑动轮播图
	var oImg=$("#oImg img");
	var oLi=$("#oLi li");
	var lr=$(".container-img .container-img-lr");
	var num1=0;
	var num2=0;
	var len=oImg.length;
	var imgLen=$("#oImg").parent(".container-img").width();
	// console.log(imgLen);
	
	$(".container-img").on("mouseenter",function(){
		lr.stop().fadeIn(500);
	});
	$(".container-img").on("mouseleave",function(){
		lr.stop().fadeOut(500);
	});
	oLi.mouseenter(function(){
		$(this).addClass("current").siblings("li").removeClass("current");
		$("#oImg").stop().animate({
			left:"-960"*$(this).index()
		})
		num1=num2=$(this).index();
	});
	
	//在最后添加第一张图
	$("#oImg").find("a").eq(0).clone().appendTo($("#oImg"));
	//点击左侧切换
	lr.find("span").eq(0).on("click",function(){
		num1--;
		if(num1===-1){
			$("#oImg").css("left","-960"*len);
			num1=len-1;
			$("#oImg").stop().animate({
				left:"-1"*num1*imgLen
			},500);
		}
		else{
			$("#oImg").stop().animate({
				left:"-1"*num1*imgLen
			},500)
		}
		num2--;
		if(num2===-1){
			num2=len-1;
			oLi.eq(num2).addClass("current").siblings("li").removeClass("current");
		}else{
			oLi.eq(num2).addClass("current").siblings("li").removeClass("current");
		}
	});
	//点击右侧切换
	lr.find("span").eq(1).on("click",function(){
		tabs();
	});
	//设置定时器，图片轮播
	var timer=null;
	clearInterval(timer);
	timer=setInterval(function(){
		tabs();
	},2500);
	$(".container-img").on("mouseenter",function(){
			clearInterval(timer);
		});
	$(".container-img").on("mouseleave",function(){
		clearInterval(timer);
		timer=setInterval(function(){
			tabs();
		},2500);
	})
	//定义图片向左移动动画函数
	function tabs(){
		num1++;
		if(num1===len+1){
			$("#oImg").css("left",0);
			num1=1;
			$("#oImg").stop().animate({
				left:"-1"*num1*imgLen
			},500);
		}
		else{
			$("#oImg").stop().animate({
				left:"-1"*num1*imgLen
			},500)
		}
		num2++;
		if(num2===len){
			num2=0;
			oLi.eq(num2).addClass("current").siblings("li").removeClass("current");
		}else{
			oLi.eq(num2).addClass("current").siblings("li").removeClass("current");
		}
	}



});
