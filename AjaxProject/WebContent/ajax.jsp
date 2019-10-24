<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function onclickde(){
		var $mobile = $("#mobile").val();
		/*$.ajax({
			url:"MoblieServlet",
			请求方式:"post",
			data:"mobile="+mobile,
			success:function(result,testStatus){
				if(result == "true"){
					alert("请号码已经存在，请换一个输入")
				}else{
					alert("注册成功！");
				}
			},
			error:function(xhr,errorMessage, e)
			{
				alert("系统异常！");
			}
		})
		$.post(
			"MoblieServlet",			
			"mobile="+mobile,
			function(result){
				if(result == "true"){
					alert("请号码已经存在，请换一个输入")
				}else{
					alert("注册成功！");
				}	
			},
			"text"
		)
		*/
			
		//$("#tip").load("MoblieServlet",	"mobile="+mobile);	
		$.getJSON(
			"MoblieServlet",			
			{"mobile":$mobile},	
			function(result){
				if(result.msg == "true"){
					$("#tip").empty();
					$("#tip").append('<div style="color:red;">请号码已经存在，请换一个输入</div>');
				}else{
					$("#tip").empty();
					$("#tip").append('<div style="color:blue;">注册成功！</div>');
				}	
			}
		)
		/*$.get(
			"MoblieServlet",			
			"mobile="+mobile,
			function(result){
				if(result == "true"){
					$("#tip").empty();
					$("#tip").append('<div style="color:red;">请号码已经存在，请换一个输入</div>');
				}else{
					$("#tip").empty();
					$("#tip").append('<div style="color:blue;">注册成功！</div>');
				}	
			}
			
		)*/
	}
</script>
</head>
<body>
	手机号码：<input id="mobile" />
	<br/>
	<input type="button" value="注册" onclick="onclickde()" />
	<span id="tip"></span>
</body>
</html>