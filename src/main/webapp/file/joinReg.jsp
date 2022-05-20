<%@page import="jdbc_p.MemberDAO"%>
<%@page import="jdbc_p.MemberDTO"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("UTF-8");
	String ff = request.getParameter("insert2");
	ff = "C:\\Users\\Administrator\\202012_eclipse-workspace\\GreenDay220519_JSP-master\\GreenDay220518_JSP-master\\src\\main\\webapp\\zzz";
	MultipartRequest mm = new MultipartRequest(
			request,
			ff, //파일 저장 위치
			10*1024*1024, //최대 크기
			"UTF-8", //인코딩
			new DefaultFileRenamePolicy() //파일 이름 중복 정책
			);
	
	String msg = "사진 파일이 이납니다.";
	String goUrl = "joinForm.jsp";
	
	if(mm.getContentType("pic")!=null &&
			Pattern.matches("image/.*", mm.getContentType("pic"))) {
		msg = "가입되었습니다.";
		goUrl = "../index.jsp";
		
		MemberDTO dto = new MemberDTO();
		dto.setPid(mm.getParameter("pid"));
		dto.setPname(mm.getParameter("pname"));
		dto.setPw(mm.getParameter("pw"));
		dto.setAge(Integer.parseInt(mm.getParameter("age")));
		dto.setMarriage(Boolean.parseBoolean(mm.getParameter("marriage")) );
		dto.setPic(mm.getFilesystemName("pic"));
		dto.setMyff(mm.getFilesystemName("myff"));
		
		new MemberDAO().insert2(dto);
		
	}else{
		if(mm.getFile("pic")!=null){
			mm.getFile("pic").delete();
			
		}if(mm.getFile("myff")!=null){
			 mm.getFile("myff").delete();
		}
	}
%>

	<script>
			alert("<%=msg%>");
			location.href="<%=goUrl%>";
		</script>
</body>
</html>