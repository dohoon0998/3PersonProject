<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생조회</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
    } 
    h2 {
        margin-bottom: 10px;
    }
    table {
        border: 1px solid black;
    }
    div {
        display: flex;
        justify-content: center;
    }
    section {
        margin: 0;
        padding: 0;
        position: absolute;
        top: 200px;
        left: 30%;
    }
    td {
        text-align: center;
        border: 1px solid black;          
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
    h2 {
    margin: 30px 0;
    }
</style>
</head>
<body>
    <h2 align="center">교수조회</h2>
    <div>
        <table>
            <tr>
                <td>이름</td>
                <td>나이</td>
                <td>직책</td>
                <td>주소</td>
                <td>주민번호</td>
                <td>성별</td>
                <td>학과</td>
            </tr>
            <%
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            String sql = "SELECT * FROM profinfo";
            
            try {
                Class.forName("oracle.jdbc.OracleDriver");
                
                conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe", "musthave", "1234");
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                
                while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
            </tr>
            <%
                }
            } catch(SQLException se) {
                out.println(se.getMessage()); // 오류 메시지 출력
            } catch(ClassNotFoundException e) {
                out.println(e.getMessage()); // 드라이버 클래스 로드 오류 메시지 출력
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (pstmt != null) {
                        pstmt.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                } catch(SQLException se) {
                    out.println(se.getMessage()); // 오류 메시지 출력
                }
            }
            %>
        </table>
    </div>
    <footer>
          <p>Copyright @ 2023 All right reserved dohoon kim</p>
      </footer>
</body>
</html>