<%--
  Created by IntelliJ IDEA.
  User: rahmn
  Date: 9/1/23
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String[][] studentDetails = {
            { "Dep 1", "S1", "35", "", "John Smith" },
            { "Dep 1", "S2", "70", ""," Jane Doe" },
            { "Dep 1", "S3", "60", "", "Michael Johnson" },
            { "Dep 1", "S4", "90", "", "Emily Brown" },
            { "Dep 2", "S5", "30", "", "David Lee" },
            { "Dep 3", "S6", "32", "", "Sarah Wang" },
            { "Dep 3", "S7", "70", "", "Chris Johnson" },
            { "Dep 3", "S8", "20", "", "Michelle Davis" }
    };
    String validUsername = "admin";
    String validPassword = "admin";

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    boolean isLoggedIn = false;

    if (username != null && password != null) {
        if (username.equals(validUsername) && password.equals(validPassword)) {
            isLoggedIn = true;
            System.out.println("<h2>Login successful!</h2>");
        } else {
            System.out.println("<h2>Login failed. Invalid credentials.</h2>");
        }
    } else {
        System.out.println("<h2>Please enter your username and password.</h2>");
    }

    if (isLoggedIn) {
        for (int i = 0; i < studentDetails.length; i++) {
            String marksStr = studentDetails[i][2];
            int marks = Integer.parseInt(marksStr);
            studentDetails[i][3] = marks >= 40 ? "Pass" : "Fail";
        }
    }
%>
<table>
    <tr>
        <th>Department</th>
        <th>Student ID</th>
        <th>Marks</th>
        <th>Pass %</th>
    </tr>
</table>
</body>
</html>
