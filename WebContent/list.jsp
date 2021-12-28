<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
	String dataFile = application.getInitParameter("filePath");
	String path = application.getRealPath(dataFile);	
		
	// 읽기
	FileReader fr = null;
	BufferedReader br = null;
	
	Vector<String> msgList = new Vector<String>();
	try {
		fr = new FileReader(path);
		br = new BufferedReader(fr);
		
		String line = null;
		while( (line = br.readLine()) != null) {
			msgList.add(line);
		}
	} catch(IOException e) {
		
	} finally {
		try {
			br.close();
		} catch(Exception e) {}
		try {
			fr.close();
		} catch(Exception e) {}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>list.jsp</title>
</head>
<body>
	<a href="input.jsp">글작성하기</a>
	<hr>
	<table>
		<tr>
			<th>number</th><th>message</th>
		</tr>
		<%
			if(msgList.size() == 0) {
		%>
		<tr>
			<th colspan="2">empty</th>
		</tr>
		<%
			} else {
				for(int i=msgList.size()-1; i>=0; i--) {
		%>
		<tr>
			<td><%= i+1 %></td>
			<td><%= msgList.get(i) %></td>
		</tr>
		<%
				}
			}
		%>
	</table>
</body>
</html>















