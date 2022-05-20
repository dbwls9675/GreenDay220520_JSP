<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadForm</title>
</head>
<body>
	<h1>uploadForm</h1>
	<!-- http://servlets.com/cos/ -> cos-20.08다운로드 -> WEB-INF->lib->jar파일 복사 -->
	<form action="uploadReg.jsp" method="post" 
	enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="pname" /></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td>파일1</td>
				<td><input type="file" name="file" /></td>
			</tr>
			<tr>
				<td>파일2</td>
				<td><input type="file" name="upff2" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="가입" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>