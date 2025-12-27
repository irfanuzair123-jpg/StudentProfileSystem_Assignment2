<%@page import="java.sql.*, com.student.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>All Profiles</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; padding: 30px; background-color: #f4f4f9; text-align: center; }
        h2 { color: #333; }
        table { margin: 20px auto; border-collapse: collapse; width: 80%; background: white; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #00838f; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .search-box { margin-bottom: 20px; }
        input[type="text"] { padding: 8px; width: 300px; border: 1px solid #ccc; border-radius: 4px; }
        input[type="submit"] { padding: 8px 15px; background-color: #00838f; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .back-link { display: inline-block; margin-top: 20px; text-decoration: none; color: #00838f; font-weight: bold; }
    </style>
</head>
<body>
    <h2>Student Database List</h2>
    
    <div class="search-box">
        <form action="viewProfiles.jsp" method="GET">
            <input type="text" name="q" placeholder="Search Name (e.g., Irfan)...">
            <input type="submit" value="Search">
        </form>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Program</th>
            <th>Email</th>
        </tr>
        <%
          
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
              
                conn = DBConnection.getConnection();
                
              
                String search = request.getParameter("q");
                String sql = "SELECT * FROM profiles";
                
                
                if(search != null && !search.trim().isEmpty()) {
                    sql += " WHERE LOWER(name) LIKE '%" + search.toLowerCase() + "%'";
                }

                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);

              
                while(rs.next()){
        %>
        <tr>
            <td><%= rs.getString("student_id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("program") %></td>
            <td><%= rs.getString("email") %></td>
        </tr>
        <%      
                }
            } catch(Exception e) {
                out.println("<tr><td colspan='4'>Error: " + e.getMessage() + "</td></tr>");
            } finally {
                // Tutup connection secara manual (Wajib untuk Java version lama)
                if(rs != null) try { rs.close(); } catch(SQLException e) {}
                if(stmt != null) try { stmt.close(); } catch(SQLException e) {}
                if(conn != null) try { conn.close(); } catch(SQLException e) {}
            }
        %>
    </table>
    
    <br>
    <a href="index.html" class="back-link">← Register New Profile</a>
</body>
</html>