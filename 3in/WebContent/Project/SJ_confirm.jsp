<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8"); // 인코딩을 UTF-8로 변경

    String department = request.getParameter("Department");
    String name = request.getParameter("Name");
    String korean = request.getParameter("Korean");
    String english = request.getParameter("English");
    String math = request.getParameter("Math");
    String society = request.getParameter("Society");
    String science = request.getParameter("Science");

    String sql = null; // sql 변수를 초기화

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Oracle JDBC 드라이버 클래스 로드
        Class.forName("oracle.jdbc.OracleDriver");

        // 데이터베이스 연결
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe", "musthave", "1234");

        sql = "INSERT INTO SJVIEW VALUES(?, ?, ?, ?, ?, ?, ?)";

        pstmt = conn.prepareStatement(sql);

        // 값 바인딩
        pstmt.setString(1, department);
        pstmt.setString(2, name);
        pstmt.setString(3, korean);
        pstmt.setString(4, english);
        pstmt.setString(5, math);
        pstmt.setString(6, society);
        pstmt.setString(7, science);

        int n = pstmt.executeUpdate();
        
        response.sendRedirect("Header.jsp");
    } catch(SQLException se) {
        out.println(se.getMessage()); // 오류 메시지 출력
    } catch(ClassNotFoundException e) {
        out.println(e.getMessage()); // 드라이버 클래스 로드 오류 메시지 출력
    } finally {
        try {
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
