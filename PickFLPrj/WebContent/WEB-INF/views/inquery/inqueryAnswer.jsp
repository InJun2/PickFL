<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InqueryAnswer</title>
</head>
<body>
	<div id="inquiry">
    	<table class="inquirytable">
    		<tr class="inquiry_line">
    			<td><img src="assets/img/arrow.svg" class="img_icon"> &nbsp; ${vo.qContent}</td>
   		</tr>
    	</table> 
		
    	<table class="inquirytable">
    		<tr class="inquiry_head2">
    			<th><!-- 답변제목과 답변자의 id출력 ( 현재 문의관리자가 한명이므로 id 출력 없음 답변제목은 값을 따로 받아야 함) --></th>
    		</tr>
   		</table>
		
    	<hr>
		
    	<table class="inquirytable">
    		<tr class="inquiry_body">
   			<td><img src="assets/img/arrow2.png" class="img_icon"/> &nbsp;</td>
    		</tr>
    	</table>
     </div>
</body>
</html>
