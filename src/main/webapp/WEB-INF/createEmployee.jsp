<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
</head>
<%List<Company> companies = (List<Company>) request.getAttribute("companyList"); %>
<body>
<a href="/employees"> Back </a>

<h2>Create Employee</h2>
<form action="/createEmployee" method="post">
    name: <input type="text" name="name"><br>
    surname: <input type="text" name="surname"><br>
    email: <input type="text" name="email"><br>
    company:
    <select name="company">
        <% for (Company company : companies) { %>
        <option value="<%=company.getName()%>"><%=company.getName()%>
        </option>
        <% }%>
    </select>
    <input type="submit" value="create">
</form>
</body>
</html>
