<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="model.*" %>
<%
request.setCharacterEncoding("EUC_KR");


boolean updateUserResult = false;

UserVO userVO = new UserVO();
userVO.setUserName(request.getParameter("userName"));
userVO.setSex(request.getParameter("sex"));
userVO.setBirthDay(request.getParameter("birthYear"),request.getParameter("birthMonth"),request.getParameter("birthDate"));
userVO.setJobs(request.getParameter("jobs"));
userVO.setCellNum(request.getParameter("cellCountryCode"),request.getParameter("cellMidNum"),request.getParameter("cellLastNum"));
userVO.setAddr(request.getParameter("addr"));


System.out.println(userVO);


UserDAO userDAO = new UserDAO();
updateUserResult = userDAO.updateUser(userVO);
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>Loginȭ��</h2>
		
		<% if(updateUserResult) { %>
			���� ����<br>
			<p><p><a href = './addUser.html'>�ڷ�</a></p>
			<p><p><a href = './findUser.html'>�� ���� ����</a></p>
			<p><p><a href = 'findUser.jsp'>�� ���� ����2</a></p>
		<%} else { %>
			���� ����
		<%} %>

</body>
</html>