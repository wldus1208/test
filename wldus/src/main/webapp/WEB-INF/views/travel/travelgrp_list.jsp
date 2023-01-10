<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
 
<link href="/css/style.css" rel="Stylesheet" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
     
</head> 
 
<body>
<jsp:include page="../menu/top.jsp" />
<DIV>
  <div>
  <table style='width: 100%; margin-top:50px; height:200px'>
    <tbody>
      <c:forEach var="travelVO" items="${list }">
        
        <tr> 
          <td><i class="fa-solid fa-splotch"></i><a href="./travel_list.do?travelgrp_no=${travelVO.travelgrp_no}">${travelVO.travelgrp_name}</a></td> 
        </tr>
      </c:forEach>
      
    </tbody>
  </table>
</DIV>
</DIV>
</body>
 
</html>