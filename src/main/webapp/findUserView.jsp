<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���� ��ȸ ������ �Դϴ�.</title>
<script language="javascript">
	function checkNull(memberForm) {
		var userName = memberForm.userName.value;
		if (userName == "") {
			alert('�̸��� �Էµ��� �ʾҽ��ϴ�.');
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<body>

	<form method=post name="findUser" action="findUser.jsp" onSubmit='return checkNull(this)'>
		<table>
			<tr height="10">
				<td>�� <font size="4">������ȸ</font>
				</td>
				<td colspan='3' align='right'><input type='button' name='help'
					value='?'> ����</td>
			</tr>
			<tr height="1">
				<td colspan='5'>
					<hr size='1' color='blue'>
				</td>
			</tr>
			<tr height="30">
				<td width="150">* �̸��� �Է��ϼ���</td>
				<td><input type='text' name='userName'></td>
			</tr>

			<tr align='center'>
				<td colspan='2'><input type='submit' value='��ȸ'	/> &nbsp; 
					<input type='reset'	value='���' />
				</td>
			</tr>
		</table>

	</form>
</body>
</html>