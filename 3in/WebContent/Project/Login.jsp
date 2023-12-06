<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
	input{
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
	form{
	display: flex;
	flex-direction: column;
    align-items: center;
	}
	input::placeholder {
   	color: gray;
	}
	button {
	background: none;
	border: 0;
	color: #5778ff;
	margin-bottom: 10px;
	font-size: 15px;
	}
	button:hover {
	cursor: pointer;
	}
	#in{
	background: #5778ff;
	border: 0;
	border-radius: 3px;
	width: 130px;
	color: white;
	}
	footer {
    background: #5778ff;
	color: white;
	position: absolute;
    bottom: 0vh;
	width: 100%;
	text-align: center;
	font-size: 25px;
	font-weight: bold;
	padding: 7px 0;
    }
    #in:hover {
    cursor: pointer;
    }
    div{
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
</head>
<body>
<p class="p">학사관리프로그램</p>
<div>
<section align=center>
            <h1>로그인</h1>
                <form action="Login_confirm.jsp">                    
                            
                    <input type="text" name="id" placeholder="id를 입력하세요">
                                                       
                    <input type="text" name="password" placeholder="pw를 입력하세요">                            
                              
                    <input type="submit" id="in" value="로그인하기">
                </form>
                <button onclick="location.href='JDM.jsp'">회원가입 하러가기</button>
        </section>
        </div>
        <footer>
          <p>Copyright @ 2023 All right reserved dohoon kim</p>
      </footer>
</form>
</body>
</html>