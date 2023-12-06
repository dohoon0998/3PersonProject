<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	*{
	box-sizing: border-box;
	margin: 0;
	}
	body{
	background: white;
	}
	h1{
	color: black;
	margin-top: 80px;
	margin-bottom: 50px;
	}
	form{
	display: flex;
	flex-direction: column;
    align-items: center;
	}
	input {
	background: white;
	border: 1px solid black;
	margin-bottom: 22px;
	height: 35px;
	width: 300px;
	padding: 0 12px;
	font-size: 15px;
	color: black;
	border-radius: 3px;
	}
	input::placeholder {
   	color: gray;
	}
	#in{
	color: white;
	background: #5778ff;
	border: 0;
	border-radius: 3px;
	width: 130px;
	font-size: 15px;
	}
	.sex {
	display: flex;
	width: 200px;
	}
	.statue {
	display: flex;
	width: 200px;
	}
	.ds {
	display: flex;
	width: 200px;
	}
	.sec { 
	 margin: 0 auto;
    width: 450px;
    border: 2px solid blue;
    border-radius: 25px;
	}
	.p {
	text-align: center;
	font-size: 40px;
	font-weight: bold;
	margin: 30px 0;
	}
</style>
<%@include file = "Footer.jsp" %>
</head>
<body>
<p class="p">학사관리프로그램</p>
<div class="sec">
<section align="center">
           <form action="jdm_confirm.jsp">  
                <h1>회원가입</h1>
                    <tr> 
                	<td><input type="text" name="userid" placeholder="아이디" required></td>
                	<td><input type="text" name="userpw" placeholder="비밀번호" required></td>
                	<div class="ds">
                    <tr>
                    <td><input type="radio" name="statue" value="st">학생</td>
                    <td><input type="radio" name="statue" value="pf">교수</td>
                    </div>
                    </tr>                    
                	<div class="statue">
                    </div>
                    <td><input type="text" name="name" placeholder="이름" required></td>
            	   </tr>
                    <tr>
                        <td><input type="text" name="age" placeholder="나이" required></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="position" placeholder="직책" required></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="grade" placeholder="학년" required></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="citizen_id" placeholder="주민번호" required></td>
                    </tr>
                        <tr>
                    <td><input type="text" name="adress" placeholder="주소" required></td>
                    </tr>
                    <div class="sex">
                      <tr>
                      <td><input type="radio" name="sex" value="남">남</td>
                      <td><input type="radio" name="sex" value="여">여</td>
                      </tr>
                    </div>
                    <tr>
                        <td><input type="text" name="department" placeholder="학과" required></td>
                    </tr>
                    
                    <div class="jdm">             
                    <tr>
                        <td><input type="submit" id="in" value="회원가입"></td>
					</tr>
					</div>
            </form>
    </section>
    </div>
</body>
</html>