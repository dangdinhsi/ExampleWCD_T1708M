<%@ page import="java.util.List" %>
<%@ page import="entity.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Sidang
  Date: 8/1/2019
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Employee> list =(List<Employee>) request.getAttribute("list");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Employee Information</h1>
<%
    for (int i=0;i<list.size();i++){
        %>
Fullname: <%=list.get(i).getFullname()%><br>
Birth day: <%=list.get(i).getBirthday()%><br>
Address:<%=list.get(i).getAddress()%><br>
Position:<%=list.get(i).getPosition()%><br>
Departement: <%=list.get(i).getDepartment()%>
<%
    }
%>
</body>
</html>
