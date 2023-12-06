<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8"); // 인코딩을 UTF-8로 변경

    String user_id = request.getParameter("userid");
    String user_pw = request.getParameter("userpw");
    String user_statue = request.getParameter("statue");
    String user_name = request.getParameter("name");
    String user_age = request.getParameter("age");
    String user_position = request.getParameter("position");
    String user_grade = request.getParameter("grade");
    String user_citizen_id = request.getParameter("citizen_id");
    String user_adress = request.getParameter("adress");
    String user_sex = request.getParameter("sex");
    String user_department = request.getParameter("department");
    String sql = null; // sql 변수를 초기화

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Oracle JDBC 드라이버 클래스 로드
        Class.forName("oracle.jdbc.OracleDriver");

        // 데이터베이스 연결
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe", "musthave", "1234");

        if (user_statue.equals("st")) {
            // 학생 처리
            sql = "INSERT INTO USERINFO VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        } else if (user_statue.equals("pf")) {
            // 교수 처리
            sql = "INSERT INTO PROFINFO VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        }

        pstmt = conn.prepareStatement(sql);

        // 값 바인딩
        pstmt.setString(1, user_id);
        pstmt.setString(2, user_pw);
        pstmt.setString(3, user_statue);
        pstmt.setString(4, user_name);
        pstmt.setInt(5, Integer.parseInt(user_age));
        pstmt.setString(6, user_position);
        pstmt.setString(7, user_grade);
        pstmt.setString(8, user_citizen_id);
        pstmt.setString(9, user_adress);
        pstmt.setString(10, user_sex);
        pstmt.setString(11, user_department);

        int n = pstmt.executeUpdate();
        response.sendRedirect("Login.jsp");
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
