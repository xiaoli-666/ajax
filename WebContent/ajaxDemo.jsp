<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="test()">ajax</button>
	<h4 id="h"></h4>
	
	<script type="text/javascript">
	
	function test(){
//	 	1）创建Ajax引擎对象
		var xmlHttp = new XMLHttpRequest();
	
	// 	2）为Ajax引擎对象绑定监听（监听服务器已将数据响应给引擎）
		
		xmlHttp.onreadystatechange=function(){
			//监听事件中执行的代码
			if(xmlHttp.readyState==4&&xmlHttp.status==200){//监听响应成功之后获取数据
				document.getElementById("h").innerText=xmlHttp.responseText;
			}
			
			// 	5）接受响应数据（何时接受--监听到响应完成我们才开始获取数据）
		}
	// 	3）绑定提交地址URL
				///  请求方法  请求路径	   是否异步
		xmlHttp.open("GET","/day23/ajaxServlet",true);
	// 	4）发送请求
		xmlHttp.send();	
	}
	</script>
</body>
</html>