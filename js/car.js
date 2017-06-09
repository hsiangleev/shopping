/**
 * Created by Administrator on 2017/5/17.
 */
$(function () {
	$con=$(".container .container-box");
	//发送ajax请求
	$.ajax({
		url:"../info/myCar.php",
		type:"post",
		dataType:"json",
		success:function(data1){

			// console.log(data1);
			//发送ajax请求
			$.ajax({
				url:"../info/info1.php",
				type:"post",
				dataType:"json",
				success:function(data2){
					for (var i = 0; i < data1.length; i++) {
						var a=data1[i][0];
						var b=data1[i][1];
						var obj=$.parseJSON(data2[a][b]);
						console.log(obj);
						var result=template("template",obj);
						$(".container").append(result);
					}
					
					
				}
			});
				
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

	
		
});