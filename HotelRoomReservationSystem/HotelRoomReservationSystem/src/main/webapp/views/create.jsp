<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>Create New Reservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        input[type="text"], input[type="date"], select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Book a Room</h2>

 <form method="post" action="/view-bookiings">
    Guest Name: <input type="text" name="guestName"/><br/>
    Check-In: <input type="date" name="checkIn"/><br/>
    Check-Out: <input type="date" name="checkOut"/><br/>

<!-- Dropdown with available rooms only -->
<p>Total Available Rooms: ${fn:length(availableRooms)}</p>

<select name="roomId" required>
    <c:forEach var="room" items="${availableRooms}">
        <option value="${room.id}">
            ${room.type} (ID: ${room.id})
        </option>
    </c:forEach>
    </select>
    <c:if test="${empty availableRooms}">
    <p style="color:red;">No available rooms found!</p>
</c:if>




    <input type="submit" value="Book"/>
    <input type="submit" value="View Reservation"/>
</form>
    
</body>
</html>