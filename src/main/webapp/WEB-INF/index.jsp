<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fruit Store</title>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>

    <div class="store-container">
        <div class="fruit-table">
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${fruits}">
                        <tr class="${item.name.startsWith('G') ? "orange" : ""}">
                            <td><c:out value="${item.name}"></c:out></td>
                            <td> <c:out value="${item.price}"></c:out> </td>
                          </tr>
                    </c:forEach>
    
                </tbody>
              </table>
        </div>
    </div>
    

        <!-- For any Bootstrap that uses JS -->
        <script src="/webjars/bootstrap/js/bootstrap.js"></script>
        <script src="/js/script.js"></script>
</body>
</html>