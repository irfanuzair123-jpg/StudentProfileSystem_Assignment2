package com.student;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class ProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        String name = request.getParameter("fullname");
        String id = request.getParameter("studentid");
        String prog = request.getParameter("program");
        String email = request.getParameter("email");
        String hobby = request.getParameter("hobbies");
        String intro = request.getParameter("intro");


        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO profiles (student_id, name, program, email, hobbies, intro) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, prog);
            ps.setString(4, email);
            ps.setString(5, hobby);
            ps.setString(6, intro);
            ps.executeUpdate(); 
        } catch (SQLException e) {
            e.printStackTrace();
        }


        request.setAttribute("d_name", name);
        request.setAttribute("d_id", id);
        request.setAttribute("d_program", prog);
        request.setAttribute("d_email", email);
        request.setAttribute("d_hobbies", hobby);
        request.setAttribute("d_intro", intro);


        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}