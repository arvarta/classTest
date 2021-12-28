<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>
<%
	String dataFile = application.getInitParameter("filePath");
	String path = application.getRealPath(dataFile);	
	//¾²±â
	request.setCharacterEncoding("euc-kr");
	
	String input = request.getParameter("userInput");
	if(input != null && input.trim().length() != 0) {
		FileWriter fw = null;
		PrintWriter pw = null;
		
		try {
			fw = new FileWriter(path, true);
			pw = new PrintWriter(fw);
			
			pw.println(input);
			pw.flush();
			
		} catch(IOException e) {
			e.printStackTrace();	
		} finally {
			try {
				pw.close();
			} catch(Exception e) {}
			try {
				fw.close();
			} catch(Exception e) {}
		}
	}
	
	response.sendRedirect("list.jsp");
%>
