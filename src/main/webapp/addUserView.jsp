<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>addUserView</title>
</head>
<body>
 
        
        <form method="post" action="addUser.jsp">
            <table>
            <tr height="10">
                <td>
                    ��
                    <font size="4">��������</font>
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
                <td><input type='text' name='userName'></td>
            </tr>
            <tr height="30">
                <td>* ����</td>
                <td>
                  <input type='radio' name='sex' value='male' checked>����
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type='radio' name='sex' value='female'>����
                </td>
            </tr>
            <tr height="30">
                <td>* �������</td>
                <td><input type='text' name='birthYear' style="width:60px">�� &nbsp;
                
                    <select name = birthMonth>
                        <option value="none">--����--</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>�� &nbsp;

                    <select name = birthDate>
                        <option value="none">--����--</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
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
                    <option value="none">--�����ϼ���--</option>
                    <option value="selfEmployed">�ڿ���</option>
                    <option value="profession">������</option>
                    <option value="service">������</option>
                    <option value="office">�繫��</option>
                    <option value="student">�л�</option>
                    <option value="noJobs">����</option>
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
                    <input type='text' name='cellCountryCode' style="width:40px">-
                    <input type='text' name='cellMidNum'style="width:40px">-
                    <input type='text' name='cellLastNum'style="width:40px">
             
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
                    <input type='text' name='addr' style='width:565px'>
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