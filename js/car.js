/**
 * Created by Administrator on 2017/5/17.
 */
$(function () {
	
	
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