<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function testJson(){
		var $mobile = $("#mobile").val();
		$.getJSON(
				"JsonServlet",			
				{"name":"康和会","age":21},	
				function(result){
					var json = eval(result);
					$("#tip").empty();
					//$("#tip").append('<div style="color:blue;">'+json.name+"---"+json.age+'</div>');
					$.each(json,function(i,element){						
						$("#tip").append('<div style="color:blue;">'+this.name+"---"+this.age+'</div>');
					})
				}
			)
	}
</script>		
</head>
<body>
	手机号码：<input id="mobile" />
	<br/>
	<input type="button" value="注册" onclick="onclickde()" />
	<input type="button" value="JSON测试" onclick="testJson()" />
	<span id="tip"></span>
</body>
</html>