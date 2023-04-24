<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<% List<Employee> all = (List<Employee>) request.getAttribute("employees"); %>
<body>
<a href="/"> Back </a>
<h2>Employees</h2> <a href="/createEmployee">Create Employee</a>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>company</th>
    </tr>
    <% if (all != null && !all.isEmpty()) {%>
    <% for (Employee employee : all) { %>
    <tr>
        <td><%=employee.getId()%>
        </td>
        <td><%=employee.getName()%>
        </td>
        <td><%=employee.getSurname()%>
        </td>
        <td><%=employee.getEmail()%>
        </td>
        <td><%=employee.getCompany().getName()%>
        </td>
        <td><a href="/removeEmployee?id=<%=employee.getId()%>">Delete</a>
            / <a href="updateEmployee?id=<%=employee.getId()%>">Update</a></td>
    </tr>
    <%}%>
    <%}%>
</table>
</body>
</html>
