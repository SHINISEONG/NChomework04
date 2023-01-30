<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보 조회 페이지 입니다.</title>
<script language="javascript">
	function checkNull(memberForm) {
		var userName = memberForm.userName.value;
		if (userName == "") {
			alert('이름이 입력되지 않았습니다.');
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
				<td>■ <font size="4">정보조회</font>
				</td>
				<td colspan='3' align='right'><input type='button' name='help'
					value='?'> 도움말</td>
			</tr>
			<tr height="1">
				<td colspan='5'>
					<hr size='1' color='blue'>
				</td>
			</tr>
			<tr height="30">
				<td width="150">* 이름을 입력하세요</td>
				<td><input type='text' name='userName'></td>
			</tr>

			<tr align='center'>
				<td colspan='2'><input type='submit' value='조회'	/> &nbsp; 
					<input type='reset'	value='취소' />
				</td>
			</tr>
		</table>

	</form>
</body>
</html>