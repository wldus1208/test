<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<link href="/css/style.css" rel="Stylesheet" type="text/css">

<script type="text/JavaScript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">

<script type="text/javascript">
  
  $(function() {
	  $('#users_name').on('focusout', checkName);
	  $("#btn_checkID").on("click", checkID);
	  $('#users_passchk').on('focusout', checkPW);
	  $('#btn_send').on("click", send);
  });
  
  function checkName() {
	  let frm = $('#frm');
	  let name = $('#users_name', frm).val();
	  
	  if(name == "" || name.length < 2) {
		  $('#NameChk').html("이름은 2자 이상 8자 이하로 설정해주세요.")
		  $('#NameChk').css("color", "red")
		  $("#nameDoubleChk").val("false");
	  } else {
		  $('#NameChk').html("");
		  $("#nameDoubleChk").val("true");
	  }
  }
  
  function checkID() {
	  let frm = $("#frm");
	  let users_id = $("#users_id", frm).val();
	  let params = "";
	  
	  if ($.trim(users_id).length == 0) {
		  $("#IdChk").text("ID를 입력하세요.");
		  $("#IdChk").css("color", "red");
		  return false;
	  } else {
		  params = "users_id=" + users_id;
		  
		  $.ajax({
			  url: './checkID.do',
			  type: 'get',
			  cache: false,
			  async: true,
			  dataType: 'json',
			  dats: params,
			  success: function(rdata) {
				  
				  if (rdata.cnt > 0) {
					  $("#IdChk").text("이미 사용중인 ID입니다.");
					  $("#IdChk").css("color", "red");
					  $("#idDoubleChk").val("false");
				  } else {
					  $("#IdChk").text("사용 가능한 ID입니다.");
					  $("#IdChk").css("color", "green");
					  $("#idDoubleChk").val("true");
				  }
				  
			  },
			 error: function(request, status, error) {
				 console.log(error);
			 }
		  });
	  }
  }
  
  function checkPW() {
	  let frm = $('#frm');
	  let pw1 = $('#users_passwd', frm).val();
	  let pw2 = $('#users_passchk', frm).val();
	  
	  if(pw1 != "" || pw2 != "") {
		  if(pw1 == pw2) {
			  $('#PwChk').html("비밀번호가 일치합니다.")
			  $("#PwChk").css("color", "green");
			  $("#pwDoubleChk").val("true");
		  } else {
			  $('#PwChk').html("비밀번호가 일치하지 않습니다.")
			  $("#PwChk").css("color", "red");
			  $("#pwDoubleChk").val("false");
			  $("#users_passwd").val("");
			  $("#users_passchk").val("");
		  }
	  }
  }
  
  function send() {
	$('#frm').submit();  
  }
  
</script>
</head>
<body>
<jsp:include page="../menu/top.jsp" flush='false' />
  
	<h2>회원가입</h2>
	<span style="color:blue; font-size: 20px;">기본정보 </span><span style="font-size: 20px;">입력</span>
	<form name="frm" id="frm" method="POST" action="./create.do">
			<table class="form-group" style="padding:10px">
				<tr>
				<th><label for="users_name">이&emsp;름&emsp;</label></th>
				<td>
					<input type="text" id="users_name" name="users_name" maxlength="8" required="required" autofocus/>
					<small class="form-text text-muted"><span class="point" id="NameChk">이름을 입력해주세요.</span></small>
					<input type="hidden" id="nameDoubleChk"/>
				</td>
				</tr>
				<tr>
				<th><label for="users_id">I&emsp;D&emsp;</label></th>
				<td>
					<input type="text" id="users_id" name="users_id" maxlength="10" required="required"/>
					<button type="button" id="btn_checkID">중복 확인 &emsp;</button>
					<span class="point" id = "IdChk"><br></span>
					<input type="hidden" id="idDoubleChk"/>
				</td>
				</tr>
				<tr>
				<th><label for="users_passwd">P&emsp;W&emsp;</label></th>
				<td>
					<input id="users_passwd" type="password" name="users_passwd" required="required" maxlength="8" autocomplete="off"/>
					<small class="form-text text-muted"><span class="point">* 비밀번호는 총 8자 까지 입력가능</span></small>
				</td>
				</tr>
				<tr>
				<th><label for="users_passchk">P&emsp;W 확인</label></th>
				<td>
					<input id="users_passchk" type="password" name="users_passchk" required="required" placeholder="동일하게 입력해주세요." maxlength="8" autocomplete="off"/>
					<span class="point" id="PwChk"></span>
					<input type="hidden" id="pwDoubleChk"/>
				</td>
				</tr>
				<tr>
				<th><label for="users_gender">성&emsp;별</label></th>
				<td>
					<input id="users_gender" type="radio" name="users_gender" value="남"/>남
					<input id="users_gender" type="radio" name="users_gender" value="여"/>여
				</td>
				</tr>
				<tr>
				<th><label for="users_email">이메일</label></th>
				<td>
					<input id="users_email" type="text" name="users_email" required="required" placeholder="example@naver.com"/>
				</td>
				</tr>
				<tr>
				<th><label for="users_tel">휴대폰 번호</label></th>
				<td>
					<input id="users_tel" type="tel" name="users_tel" required placeholder="전화번호 입력"/>
				</td>
				</tr>
			</table>
	<div>
		<button type="button" id="btn_send">가입</button>
		<button type="reset">취소</button>
	</div>
	</form>
</body>
</html>