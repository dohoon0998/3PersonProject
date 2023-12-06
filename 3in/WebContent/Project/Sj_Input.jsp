<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생성적입력</title>
<style>
	*{
	box-sizing: border-box;
	margin: 0;
	}
	div{
	display: flex;
	justify-content: flex-start;
    flex-direction: column;
    align-items: center;
	}
	h1{
	margin-top: 60px;
	margin-bottom: 25px;
	}
    input {
	background: none;
	height: 40px;
	width: 370px;
	color: black;
	border: 1px solid balck;
	padding: 0 12px;
	font-size: 15px;
	margin-bottom: 25px;
	border-radius: 3px;
	}
	.in {
	border: none;
	background: #5778ff;
	color: white;
	width: 150px;
	}
	.dii { 
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
	footer {
    background: #5778ff;
	color: white;
	position: absolute;
    bottom: -18vh;
	width: 100%;
	text-align: center;
	font-size: 25px;
	font-weight: bold;
	padding: 7px 0;
    }
</style>
</head>
<body>
<p class="p">학사관리프로그램</p>
<div class="dii">
	<section>
		<h1 align="center">성적 입력</h2>
		    <form action="SJ_confirm.jsp">
		    <div>	
					<input type="text" name="Department" placeholder="학과">		
				    <input type="text" name="Name" placeholder="이름">			
				    <input type="text" name="Korean" placeholder="국어">
					<input type="text" name="English" placeholder="영어">
				    <input type="text" name="Math" placeholder="수학">
					<input type="text" name="Society" placeholder="사회">
					<input type="text" name="Science" placeholder="과학">		    			
					 <td colspan="2" align="center">
							<input class="in" type="submit" value="성적 등록" onclick="Update()" name="submit"> 	
                </div>
			</form>
	</section>
	<footer>
          <p>Copyright @ 2023 All right reserved dohoon kim</p>
      </footer>
</div>
</body>
</html>