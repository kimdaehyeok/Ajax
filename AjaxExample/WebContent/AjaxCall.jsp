<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script language="javascript" type="text/javascript">
	var httpRequest;
	var url = 'http://localhost:8080/AjaxExample/ajaxReceive.do'; // master + branch1

	function validateUserId() {
		httpRequest = new XMLHttpRequest();
		httpRequest.onreadystatechange = alertContents;

		url = url + '?userId=' + document.getElementById('userId').value;
		alert(url);

		httpRequest.open('GET', url, true);
		httpRequest.send();

	}

	function alertContents() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				alert(httpRequest.responseText);
			}
		}
	}
	
	function validateUserIdPost()
	{
		httpRequest = new XMLHttpRequest();
		httpRequest.onreadystatechange = alertPostContent;
		
		var param1 = document.getElementById('userIdPost').value;
		var param2 = document.getElementById('userPasswordPost').value;
		var params = 'userIdPost='+ param1 + '&' + 'userPasswordPost=' + param2;

		alert(params);
		
		httpRequest.open('POST',url,true);	
		httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		httpRequest.send(params);
	}
	
	function alertPostContent()
	{
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				alert(httpRequest.responseText);
			}
		}
	}
</script>

</head>
<body>
	<form name="personForm">
		<input type="text" size="20" id="userId" />
		 <input type="button" value="ajaxCall_do" onClick="validateUserId()" />
	</form>

	<form name="personForm2">
		<input type="text" size="20" id="userIdPost" /> 
		<input type="text" size="20" id="userPasswordPost" /> 
		<input type="button" value="ajaxCall_post" onClick="validateUserIdPost()" />
	</form>
</body>
</html>