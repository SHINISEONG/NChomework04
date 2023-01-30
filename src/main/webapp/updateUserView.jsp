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
                    ��
                    <font size="4">���� ����</font>
                </td>
                <td colspan='3' align='right'>
                    <input type='button' name='help' value='?'>
                    ����
                </td>
            </tr>         
            <tr height="1">
                <td colspan='5'>
                    <hr size='1' color ='blue'>
                </td>
            </tr>    
            <tr height="30">
                <td width="150">* �̸�</td>
                <td><input type='text' name='userName' value = '<%=userVO.getUserName() %>'></td>
            </tr>
            <tr height="30">
                <td>* ����</td>
                <td>
                <%if(userVO.getSex().equals("male")) { %>
                   <input type='radio' name='sex' value='male' checked>����
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type='radio' name='sex' value='female'>����
                <%} else { %>
                	<input type='radio' name='sex' value='male' >����
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type='radio' name='sex' value='female' checked>����
                <%} %>
                </td>
            </tr>
            <tr height="30">
                <td>* �������</td>
               
                <td><input type='text' name='birthYear' value = '<%=birthDay[0]%>'style="width:60px">�� &nbsp;
                    <select name = birthMonth>
                        <option  value="none">--����--</option>
                        
                        <% for (int i=1; i<=12; i++) {%>
                        <option <%= birthDay[1]==i?"selected":""%> value="<%=i%>"><%=i %></option>
                        <% } %>
                        
                    </select>�� &nbsp;

                    <select name = birthDate>
                         <% for (int i=1; i<=31; i++) {%>
                        <option <%= birthDay[2]==i?"selected":""%> value="<%=i%>"><%=i %></option>
                        <% } %>
                    </select>��
                    <td><input type='radio' name='solar' value='true' checked>���
                    <input type='radio' name='solar' value='false'>���� (
                    <input type='checkbox' name='intercalation' value='true'>���� )</td>
                
            </tr>
            
            <tr height="30">
                <td>* �����з�</td>
                <td>
                <select name = education style="width:200px">
                    <option value="none">--�����ϼ���--</option>
                    <option value="universe">���б�</option>
                    <option value="highSchool">����б�</option>
                    <option value="middleSchool">���б�</option>
                </select>
                </td>
            </tr>

            <tr height="30">
                <td>* ����</td>
                <td>
                <select name = jobs style="width:200px">
                    <option <%=userVO.getJobs().equals("none") %> value="none">--�����ϼ���--</option>
                    <option <%=userVO.getJobs().equals("selfEmployed") %>value="selfEmployed">�ڿ���</option>
                    <option <%=userVO.getJobs().equals("profession") %>value="profession">������</option>
                    <option <%=userVO.getJobs().equals("service") %>value="service">������</option>
                    <option <%=userVO.getJobs().equals("office") %>value="office">�繫��</option>
                    <option <%=userVO.getJobs().equals("student") %>value="student">�л�</option>
                    <option <%=userVO.getJobs().equals("noJobs") %>value="noJobs">����</option>
                </select>
            </td>
            <td>�Ҽ�</td>
            <td><input type='text' name='department'></td>
            </tr>
            <tr height="30">
                <td>* ��ȥ����</td>
                <td>
                    <input type='radio' name='marriage' value='false' checked>��ȥ
                    <input type='radio' name='marriage' value='true'>��ȥ
                </td>
                <td>�ڳ��</td>
                <td>
                    <select name = numOfChildren>
                        <option value="none">--����--</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>��
                </td>
            </tr>
            <tr>
                <td rowspan="2">* ����ó</td>
                <td colspan="2">
                    ����ȭ��ȣ
                    <input type='text' name='phoneAreaCode' style="width:40px">-
                    <input type='text' name='phoneMidNum'style="width:40px">-
                    <input type='text' name='phoneLastNum'style="width:40px">
                    <input type='radio' name='pohneNumType' value='work' checked>�� 
                    <input type='radio' name='phoneNumType' value='home'>����
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    ���޴���&nbsp;&nbsp;&nbsp;
                    <input type='text' name='cellCountryCode' value = '<%=cellNum[0] %>'style="width:40px">-
                    <input type='text' name='cellMidNum' value = '<%=cellNum[1] %>'style="width:40px">-
                    <input type='text' name='cellLastNum' value = '<%=cellNum[2] %>'style="width:40px">
             
                    <input type='radio' name='carrier' value='skt'>SKT
                    <input type='radio' name='carrier' value='kt'>KT
                    <input type='radio' name='carrier' value='lgt'>LGT
                    <br>
                    <font size ="2">����ȭ��ȣ�� �޴�����ȣ �� ���� �� �ϳ��� �ݵ�� �Է��ϼž� �մϴ�.</font>
                </td>
            </tr>
      
            <tr height="30">
                <td>* ������ �ּ�</td>
                <td colspan="4">
                    <input type='button' name='domestic' value='����'>
                    <input type='button' name='overseas' value='����'>
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
            		<input type='submit' value='����' />
            		&nbsp;
					<input type='reset' value='���' />
				</td>
			</tr>
        </table>
        
       </form>
</body>
</html>

