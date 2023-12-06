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
	justify-content: center;
	}
	h1{
	margin-top: 60px;
	margin-bottom: 25px;
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
	<section>
		<h1 align="center">성적 입력</h2>
		    <form action="" name="form">
		    <div>
			<table border=1>
					<tr>
						<td>학과</td>
						<td><input type="text" name="Department"  ></td>
					</tr>				
					<tr>
						<td>이름</td>
						<td><input type="text" name="Name" ></td>
					</tr>					
					<tr>
						<td>국어</td>
						<td><input type="text" name="Korean" ></td>
					</tr>				
					<tr>
						<td>영어</td>
						<td><input type="text" name="English" ></td>
					</tr>										
						<tr>
						<td>수학</td>
						<td><input type="text" name="Math"></td>
					</tr>				
						<tr>
						<td>사회</td>
						<td><input type="text" name="Society"></td>
					</tr>					
						<tr>
						<td>과학</td>
						<td><input type="text" name="Science"></td>
					</tr>					
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="성적 등록" onclick="Update()" name="submit"> 
						</td>
					</tr>
				</table>
                </div>
			</form>
	</section>
	<footer>
          <p>Copyright @ 2023 All right reserved dohoon kim</p>
      </footer>
</body>
</html>