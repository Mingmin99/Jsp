package com.member.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ModifyOk
 */

@WebServlet("/member/modify/ModifyOk")
public class ModifyOk extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private String name, id, pw, phone1, phone2, phone3, gender;
    private String query;
    private Connection conn;
    private Statement stmt;
    private PreparedStatement pstmt;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyOk() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
//      response.getWriter().append("Served at: ").append(request.getContextPath());
        System.out.println("doGet");
        modifyDo(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
//      doGet(request, response);
        System.out.println("doPost");
        modifyDo(request, response);
    }

    private void modifyDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession(true);
        name = (String) session.getAttribute("name");
        id = (String) session.getAttribute("id");
        
        pw = request.getParameter("pw");
        phone1 = request.getParameter("phone1");
        phone2 = request.getParameter("phone2");
        phone3 = request.getParameter("phone3");
        gender = request.getParameter("gender");
        query = "update member set pw = ?, phone1 = ?, phone2 = ?, phone3 = ?, gender = ?  where id = ?";
    
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:dink20", "C##scott", "tiger");
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, pw);
            pstmt.setString(2, phone1);
            pstmt.setString(3, phone2);
            pstmt.setString(4, phone3);
            pstmt.setString(5, gender);
            pstmt.setString(6, id);
            int iResult = pstmt.executeUpdate();
            System.out.println(iResult);
            if( iResult  >= 1) {
                System.out.println("수정 성공");
                response.sendRedirect("modifyResult.jsp");
                
            } else {
                System.out.println("수정 실패");
                response.sendRedirect("modify.jsp");
            }
            
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            response.sendRedirect("modify.jsp");
        } finally {
            try {
                if(stmt != null) stmt.close();
                if(conn != null) conn.close();
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
    }

}