<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
          <button onclick="show()">点击</button>
          <h1 id="w"></h1>
          <script type="text/javascript">
              function show() {
            	  alert(1)
				   var sss = new XMLHttpRequest();
				   sss.onreadystatechange=function(){
					if(sss.readyState==4&&sss.status==200){
						alert(2)
						document.getElementById("w").innerText=sss.responseText;
					}
					sss.open("GET","ajax",true);
					sss.send();
			}
              }
          </script>
</body>
</html>