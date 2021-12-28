<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>input.jsp</title>
</head>
<body>
<a href="list.jsp">목록으로</a>
<hr>
<form action="write.jsp" method="post">
	message : <input type="text" name="userInput" />
	<br>
	<input type="submit" value="write" />
</form>
</body>
</html>