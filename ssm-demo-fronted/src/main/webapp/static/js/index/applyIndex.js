$(function(){
	$("#cld").attr("src","../../static/img/index/login_icon.png");
	if(type=="1"){
		$("#badj").attr("src","../../static/img/index/reg_icon.png");
		$("#bgdj").attr("src","../../static/img/index/pwd_icon.png");
		var date = new Date();
		date.setTime(date.getTime() + 1000000000);
		if(tsmId!=""&&mac!=""&&jgDm!=""){
			document.cookie = "tsmId="+tsmId+"; expires=" + date.toGMTString()+"; path=/";
			document.cookie = "mac="+mac+"; expires=" + date.toGMTString()+"; path=/";	
			document.cookie = "regioninfo="+jgDm.substring(0,4)+"00; expires=" + date.toGMTString()+"; path=/";
			document.cookie = "countyinfo="+jgDm+"; expires=" + date.toGMTString()+"; path=/";
		}else{
			external.close('');
		}
		
	}else{
		$("#badj").attr("src","../../static/img/index/dj_icon.png");
		$("#bgdj").attr("src","../../static/img/index/db_icon.png");
	}
});

function toLoginPage(){
	//window.location.href=G3.webPath+"jsp/gcloud/iaicweb/ssterminal/login.jsp";
	window.location.href=G3.webPath+"jsp/gcloud/iaicweb/ssterminal/swipeIdcard.jsp?type=login&county="+jgDm;
}

function toRegPage(){
	window.location.href=G3.webPath+"jsp/gcloud/iaicweb/ssterminal/swipeIdcard.jsp?type=register";
}

function toFindPass(){
	window.location.href=G3.webPath+"jsp/gcloud/iaicweb/ssterminal/swipeIdcard.jsp?type=findpass";
}

function toMcsb(){
	window.location.href=G3.webPath+"jsp/gcloud/iaicweb/ssterminal/mcsbContent.jsp";
}
function toGtsldj(){
	//window.location.href=G3.frontStatic.iaicwebUrl+"/jsp/gcloud/iaicweb/ssterminal/swipeIdcard.jsp";
	window.location.href=G3.frontStatic.iaicwebUrl+"/jsp/gcloud/iaicweb/ssterminal/showBlcns2.jsp";
}
function toMenulist(){
	window.location.href=G3.frontStatic.iaicwebUrl+"/jsp/gcloud/iaicweb/ssterminal/menuList.jsp";
}
function quit(){
	if(type=="1"){
		external.close('');
	}else{
		G3.confirm("提示","确认退出登录？",function(){
			logout();
		});
	}
}

function logout(){
	clearUserCookie();
	var command = new G3.Command("com.inspur.gcloud.publicservice.user.cmd.ReginfoCmd");
	command.execute("logout");
	var url =  "jsp/gcloud/iaicweb/ssterminal/applyIndex.jsp?type=1";
	G3.forward(url);
}
//清空信息
function clearUserCookie(){
	//删除cookie
	if(null!=$.cookie("isCaUser")){
		delUserCookie("isCaUser");
	}
	delUserCookie("isSameUser");
	delUserCookie("psout_sso_token");
	//	delCookie("saveUser");
}
//删除cookie,就是把某个cookie的过期时间设置成过去的某个时间
function delUserCookie(objName){
	var date = new Date();
	date.setTime(date.getTime() - 1000000000);
	document.cookie = objName + "=a; expires=" + date.toGMTString()+"; path=/";
}