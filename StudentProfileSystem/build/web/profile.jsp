<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile Success</title>
        <style>
            body {
                font-family: 'Segoe UI', Arial, sans-serif;
                background-color: #e0f2f1;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .card {
                background: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                width: 400px;
                text-align: center;
                border-top: 5px solid #00838f;
            }
            h2 { color: #00838f; margin-bottom: 20px; }
            .info-group {
                text-align: left;
                margin-bottom: 15px;
                border-bottom: 1px solid #eee;
                padding-bottom: 5px;
            }
            .label {
                font-size: 12px;
                color: #666;
                text-transform: uppercase;
                letter-spacing: 1px;
                display: block;
            }
            .value {
                font-size: 16px;
                font-weight: 500;
                color: #333;
                display: block;
            }
            .btn-group { margin-top: 25px; }
            a {
                text-decoration: none;
                padding: 10px 20px;
                border-radius: 5px;
                font-size: 14px;
                margin: 0 5px;
            }
            .btn-new { background-color: #00838f; color: white; }
            .btn-list { background-color: #555; color: white; }
        </style>
    </head>
    <body>
        <div class="card">
            <h2>Profile Saved!</h2>
            
            <div class="info-group">
                <span class="label">Name</span>
                <span class="value">${d_name}</span>
            </div>

            <div class="info-group">
                <span class="label">Student ID</span>
                <span class="value">${d_id}</span>
            </div>

            <div class="info-group">
                <span class="label">Program</span>
                <span class="value">${d_program}</span>
            </div>

            <div class="info-group">
                <span class="label">Email</span>
                <span class="value">${d_email}</span>
            </div>
            
            <div class="info-group">
                <span class="label">Hobbies</span>
                <span class="value">${d_hobbies}</span>
            </div>

            <div class="btn-group">
                <a href="index.html" class="btn-new">Register Again</a>
                <a href="viewProfiles.jsp" class="btn-list">View All Database</a>
            </div>
        </div>
    </body>
</html>