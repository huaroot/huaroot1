<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function onclide(){
		
		var mobile = document.getElementById("mobile").value;
		//通过ajax异步方式 请求服务端
        xmlHttpRequest = new XMLHttpRequest();
      	//设置xmlHttpRequest的回调函数
        xmlHttpRequest.onreadystatechange = callBack;   
      	//
        xmlHttpRequest.open("get","MoblieServlet?mobile="+mobile,true);alert(1234); 
      
		//设置post方式的头信息
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		//设置k-v对
		xmlHttpRequest.send(null);
	}
	function callBack(){
		
		if(xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
			var data = xmlHttpRequest.responseText;
			if(data == "true"){
				alert("请号码已经存在，请换一个输入")
			}else{
				alert("注册成功！");
			}
		}
	}
</script>
</head>
<body>
	手机号码：<input id="mobile" />
	<br/>
	<input type="button" value="注册" onclick="onclide()" />
</html>