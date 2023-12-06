<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상미대학교</title>
<style>
	* {
	box-sizing: border-box;
	margin: 0;
	}	
	li {
	list-style:none;
	}	
	a {
	text-decoration:none;
	font-size:14px;
	}
	.menu {
	width: 1000px;
    overflow: hidden;
    margin: 0;;
    margin-left: 85px;
	}
	.menu > li {
    width: 20%; 
    float: left;
    text-align: center;
    line-height: 40px;
    background-color: #5778ff;
	}
	.menu a {
    color: #fff;
	}
	.submenu > li {
    line-height: 50px;
    background-color: #94a9ff;
	}
	.submenu {
    height: 0; 
    overflow: hidden;
	}
	.menu > li:hover {
    background-color: #94a9ff;
    transition-duration: 0.5s;
	}
	.menu > li:hover .submenu {
    height: 150px; 
    transition-duration: 1s;
     } 
    div {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0 20px;
    padding-top: 10px;
    } 	
	section {
	position: absolute;
	bottom: 40%;
	font-size: 55px;
	}	
	h1 {
	margin-top: 15px;
	margin-bottom: 20px;
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
</style>
</head>
<body>
	<div>
	<h1>학사 관리 프로그램</h1>
	
	 <ul class="menu">
      <li>
        <a href="Login.jsp">로그인</a>
      </li>
      
      <li>
        <a href="Sj_Input.jsp">성적입력</a>
      </li>
      
      <li>
        <a href="#">조회</a>
        <ul class="submenu">
          <li><a href="Student_Inquiry.jsp">학생조회</a></li>
          <li><a href="Professor_Inquiry.jsp">교수조회</a></li>
          <li><a href="SJ_View.jsp">성적조회</a></li>
        </ul>
      </li>
      
      <li>
        <a href="Login.jsp">로그아웃</a>      
      </li>
    </ul>
    </div>
    
   <section> 
    <p>학사관리프로그램</p>
    <p>상일미디어고등학교</p>
    </section>   
    <footer>
          <p>Copyright @ 2023 All right reserved dohoon kim</p>
      </footer> 
</body>
</html>