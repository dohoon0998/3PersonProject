<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("euc-kr");

	String inputId = request.getParameter("id");
	String inputPw = request.getParameter("password");

	ResultSet rs = null;
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    String sql = "SELECT * FROM userinfo WHERE id = ? AND password = ?";
    
    try {
    	Class.forName("oracle.jdbc.OracleDriver");
    	
    	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe", "musthave", "1234");
        pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, inputId);
		pstmt.setString(2, inputPw);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			// 인증 성공
			response.sendRedirect("Header.jsp");
		} else {
			// 인증 실패: 로그인 페이지로 리다이렉트 등의 처리
			response.sendRedirect("Login.jsp");
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