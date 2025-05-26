<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rooms</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            display: inline-block;
            margin: 20px auto;
            text-align: center;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h2>All Rooms</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Type</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${rooms}" var="room">
                <tr>
                    <td>${room.id}</td>
                    <td>${room.type}</td>
                    <td>
                        <c:choose>
                            <c:when test="${room.available}">
                                <span style="color: green;">Available</span>
                            </c:when>
                            <c:otherwise>
                                <span style="color: red;">Booked</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <p style="text-align: center;">
        <a href="${pageContext.request.contextPath}/dashboard">← Back to Dashboard</a>
    </p>

</body>
</html>