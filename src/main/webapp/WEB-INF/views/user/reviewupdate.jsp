<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/resources/css/review.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">

$(function () {
	$(".starList").each(function(){
		$(this).parent().children($('.starR1')).slice(0, $(this).val()).addClass('on');
		$(this).parent().children($('.starR2')).slice(0, $(this).val()).addClass('on');
	})
});

$(function () {
	
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  var star = $(this).children().val();
		  $("#starVal").prop("value",star);
		  
		  console.log($("#starVal").val());
		  
		});
	
	$('.starRev span').click(function () {
	})
	
})

</script>

</head>
<body>

	<!-- header -->
    <header id="header" class="area">
    	<%@ include file="/WEB-INF/views/header.jsp"%>
    </header>
    
    <section>
    	<div class="title">
    		<p>리뷰 수정</p>
    	</div>
    	<div>
    		<form action="reviewUpdateRes.do" method="post">
    		<input type="hidden" name="review_no" value="${dto.review_no }">
    		<input type="hidden" name="member_id" value="${member_id }">
    		<table class="one">
    		<colgroup>
				<col width="20%"/>
				<col width="80%"/>
			</colgroup>
    			<tr>
    				<th>작성자</th>
    				<td style="text-align:left;" type="text" name="review_id" readonly="readonly">${dto.review_id}</td>
    			</tr>
    			<tr>
    				<th>별점</th>
    				<td>
						<div class="starRev">
				  			<span class="starR1" id="s1"><input type="hidden" value="1"/></span>
			  				<span class="starR2" id="s2"><input type="hidden" value="2"/></span>
			  				<span class="starR1" id="s3"><input type="hidden" value="3"/></span>
					  		<span class="starR2" id="s4"><input type="hidden" value="4"/></span>
					 		<span class="starR1" id="s5"><input type="hidden" value="5"/></span>				 				
					 		<span class="starR2" id="s6"><input type="hidden" value="6"/></span>
			  				<span class="starR1" id="s7"><input type="hidden" value="7"/></span>
			  				<span class="starR2" id="s8"><input type="hidden" value="8"/></span>
					  		<span class="starR1" id="s9"><input type="hidden" value="9"/></span>
					  		<span class="starR2" id="s10"><input type="hidden" value="10"/></span>
							<input type="hidden" class="starList" id="starVal" name="review_star" value="${dto.review_star }"/>
						</div>
					</td>
    			</tr>
    			<tr>
    				<th>댓글 내용</th>
    				<td>
    					<textarea type="text" name="review_content" style="resize:none; width:100%; height:300px;">${dto.review_content }</textarea>
    				</td>
    			</tr>
    			<tr>
    				<td colspan="2" style="text-align:right;">
    					<input type="submit" value="수정" />
    					<input type="button" value="삭제" onclick="location.href='reviewDelete.do?review_no=${dto.review_no }&member_id=${member_id }'" />
						<input type="button" value="취소" onclick="location.href='review.do'" />
    				</td>
    			</tr>
    		</table>
    		</form>
    	</div>
    </section>
    
    <!-- footer -->
	<footer id="footerarea" class="area">
		<footer>
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</footer>
	</footer>

</body>
</html>