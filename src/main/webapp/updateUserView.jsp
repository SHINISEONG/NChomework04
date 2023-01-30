<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "model.*" %>

<%
UserVO userVO = new UserVO(); 
userVO = (UserVO)session.getAttribute("userVO"); 

String[] birthDayStr = userVO.getBirthDay().split("/");
int [] birthDay = new int[birthDayStr.length];
for (int i = 0; i<birthDay.length; i++){
	birthDay[i]=Integer.parseInt(birthDayStr[i]);
	System.out.println(birthDay[i]);
}
System.out.println();
String [] cellNum =userVO.getCellNum().split("-");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>addUserView</title>
</head>
<body>
 
        
        <form method="post" action="updateUser.jsp">
            <table>
            <tr height="10">
                <td>
                    ■
                    <font size="4">정보 수정</font>
                </td>
                <td colspan='3' align='right'>
                    <input type='button' name='help' value='?'>
                    도움말
                </td>
            </tr>         
            <tr height="1">
                <td colspan='5'>
                    <hr size='1' color ='blue'>
                </td>
            </tr>    
            <tr height="30">
                <td width="150">* 이름</td>
                <td><input type='text' name='userName' value = '<%=userVO.getUserName() %>'></td>
            </tr>
            <tr height="30">
                <td>* 성별</td>
                <td>
                <%if(userVO.getSex().equals("male")) { %>
                   <input type='radio' name='sex' value='male' checked>남성
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type='radio' name='sex' value='female'>여성
                <%} else { %>
                	<input type='radio' name='sex' value='male' >남성
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type='radio' name='sex' value='female' checked>여성
                <%} %>
                </td>
            </tr>
            <tr height="30">
                <td>* 생년월일</td>
               
                <td><input type='text' name='birthYear' value = '<%=birthDay[0]%>'style="width:60px">년 &nbsp;
                    <select name = birthMonth>
                        <option  value="none">--선택--</option>
                        
                        <% for (int i=1; i<=12; i++) {%>
                        <option <%= birthDay[1]==i?"selected":""%> value="<%=i%>"><%=i %></option>
                        <% } %>
                        
                    </select>월 &nbsp;

                    <select name = birthDate>
                         <% for (int i=1; i<=31; i++) {%>
                        <option <%= birthDay[2]==i?"selected":""%> value="<%=i%>"><%=i %></option>
                        <% } %>
                    </select>일
                    <td><input type='radio' name='solar' value='true' checked>양력
                    <input type='radio' name='solar' value='false'>음력 (
                    <input type='checkbox' name='intercalation' value='true'>윤달 )</td>
                
            </tr>
            
            <tr height="30">
                <td>* 최종학력</td>
                <td>
                <select name = education style="width:200px">
                    <option value="none">--선택하세요--</option>
                    <option value="universe">대학교</option>
                    <option value="highSchool">고등학교</option>
                    <option value="middleSchool">중학교</option>
                </select>
                </td>
            </tr>

            <tr height="30">
                <td>* 직업</td>
                <td>
                <select name = jobs style="width:200px">
                    <option <%=userVO.getJobs().equals("none") %> value="none">--선택하세요--</option>
                    <option <%=userVO.getJobs().equals("selfEmployed") %>value="selfEmployed">자영업</option>
                    <option <%=userVO.getJobs().equals("profession") %>value="profession">전문직</option>
                    <option <%=userVO.getJobs().equals("service") %>value="service">서비스직</option>
                    <option <%=userVO.getJobs().equals("office") %>value="office">사무직</option>
                    <option <%=userVO.getJobs().equals("student") %>value="student">학생</option>
                    <option <%=userVO.getJobs().equals("noJobs") %>value="noJobs">무직</option>
                </select>
            </td>
            <td>소속</td>
            <td><input type='text' name='department'></td>
            </tr>
            <tr height="30">
                <td>* 결혼여부</td>
                <td>
                    <input type='radio' name='marriage' value='false' checked>미혼
                    <input type='radio' name='marriage' value='true'>기혼
                </td>
                <td>자녀수</td>
                <td>
                    <select name = numOfChildren>
                        <option value="none">--선택--</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>명
                </td>
            </tr>
            <tr>
                <td rowspan="2">* 연락처</td>
                <td colspan="2">
                    ·전화번호
                    <input type='text' name='phoneAreaCode' style="width:40px">-
                    <input type='text' name='phoneMidNum'style="width:40px">-
                    <input type='text' name='phoneLastNum'style="width:40px">
                    <input type='radio' name='pohneNumType' value='work' checked>집 
                    <input type='radio' name='phoneNumType' value='home'>직장
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    ·휴대폰&nbsp;&nbsp;&nbsp;
                    <input type='text' name='cellCountryCode' value = '<%=cellNum[0] %>'style="width:40px">-
                    <input type='text' name='cellMidNum' value = '<%=cellNum[1] %>'style="width:40px">-
                    <input type='text' name='cellLastNum' value = '<%=cellNum[2] %>'style="width:40px">
             
                    <input type='radio' name='carrier' value='skt'>SKT
                    <input type='radio' name='carrier' value='kt'>KT
                    <input type='radio' name='carrier' value='lgt'>LGT
                    <br>
                    <font size ="2">※전화번호나 휴대폰번호 두 가지 중 하나는 반드시 입력하셔야 합니다.</font>
                </td>
            </tr>
      
            <tr height="30">
                <td>* 거주지 주소</td>
                <td colspan="4">
                    <input type='button' name='domestic' value='국내'>
                    <input type='button' name='overseas' value='국외'>
                    <input type='text' name='addr' value='<%=userVO.getAddr()%>'style='width:565px'>
                </td>
                
            </tr>
             <tr height="1">
                <td colspan='5'>
                    <hr size='1' color ='blue'>
                </td>
            </tr>    
            <tr align = 'center'>
            	<td colspan='5'>
            		<input type='submit' value='수정' />
            		&nbsp;
					<input type='reset' value='취소' />
				</td>
			</tr>
        </table>
        
       </form>
</body>
</html>

