<%-- 비밀번호 변경 --%>
<%-- 
  작성자: 낙경
 2020-06-02  23:00 수정
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<c:choose>
	<c:when test="${reset_result == -2}">
	
		<script> 
			alert("잘못된 접근입니다");
			location.href = "index.ho";
		</script>
	
	</c:when>
	
	<c:when test="${reset_result == -1}">
	
		<script> 
			alert("인증번호가 일치하지 않습니다");
			history.back();
		</script>
	
	</c:when>
	
	<c:otherwise>
				
		<c:choose>
	
			<c:when test="${reset_result == 0}">
			
				<script> 
					alert("비밀번호 업데이트에 실패하였습니다");
					history.back();
				</script>
			
			</c:when>
			
			<c:otherwise>
				
				<script> 
					alert("비밀번호 업데이트에 성공하였습니다");
					location.href = "${pageContext.request.contextPath}/User/login.ho";
				</script>
			
			</c:otherwise>
			
		</c:choose>
	
	</c:otherwise>
	
</c:choose>