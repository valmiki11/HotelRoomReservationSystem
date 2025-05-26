<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Guests</title>
</head>
<body>
  <h2>Guest List</h2>
  <table border="1" cellpadding="5" cellspacing="0">
    <tr>
      <th>ID</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Email</th>
    </tr>
    <c:forEach var="g" items="${guests}">
      <tr>
        <td>${g.id}</td>
        <td>${g.firstName}</td>
        <td>${g.lastName}</td>
        <td>${g.email}</td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>
