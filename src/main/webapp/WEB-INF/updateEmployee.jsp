<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Employee</title>
</head>
<%List<Company> companies = (List<Company>) request.getAttribute("companyList"); %>
<body>
<% Employee employee = (Employee) request.getAttribute("employee"); %>
<a href="/employees"> Back </a>

<h2>Update Employee </h2>
<form action="/updateEmployee" method="post">
    <input name="id" type="hidden" value="<%=employee.getId()%>">
    name: <input type="text" name="name" value="<%=employee.getName()%>"><br>
    surname: <input type="text" name="surname" value="<%=employee.getSurname()%>"><br>
    email: <input type="text" name="email" value="<%=employee.getEmail()%>"><br>
    company: <select name="company">
    <% for (Company company : companies) { %>
    <option value="<%=company.getName()%>"><%=company.getName()%>
    </option>
    <% }%>
</select><br>
    <input type="submit" value="update">
</form>
</body>
</html>
