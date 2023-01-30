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

<h2>정보수정 결과</h2>
		
		<% if(updateUserResult) { %>
			수정 성공<br>
			<% session.setAttribute("userVO", userVO);%>
			<p><p><a href = 'updateUserView.jsp'>뒤로</a></p>
			<p><p><a href = './findUserView.jsp'>내 정보 보기</a></p>
			<p><p><a href = 'findUser.jsp'>내 정보 보기2</a></p>
		<%} else { %>
			수정 실패
		<%} %>

</body>
</html>