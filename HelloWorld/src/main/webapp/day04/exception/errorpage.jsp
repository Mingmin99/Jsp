<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<!-- 외부 브라우저를 쓰면 자동으로 해주는 것 같음, 없어도 됨 -->
<%
response.setStatus(200);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   에러 발생
   <p>
      예외 유형 :
      <%=exception.getClass().getName()%>
   <p>
      예외 메시지 :
      <%=exception.getMessage()%>
   <p>
      예외 유형 및 메시지 :
      <%=exception.toString()%>
      
      
</body>
</html>