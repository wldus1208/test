<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>알림</title>
<link href="/css/style.css" rel="Stylesheet" type="text/css">

<script type="text/JavaScript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
  $(function(){ 
    $('#btn_ok').on('click', function() { 
      location.href="/index.do"
    });    
  });
</script>
</head>
<body>
<jsp:include page="../menu/top.jsp" flush='false' />
	<div class='message'>
		<fieldset class='fieldset_basic'>
			<ul>
				<li class='li_none' style="color:blue;">${msg} </li>
				<li class='li_none'>
					<button type="button" id="btn_ok">확인</button>
				</li>
			</ul>
		</fieldset>
	</div>
</body>
</html>