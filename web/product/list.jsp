<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cctcr
  Date: 14/11/2019
  Time: 11:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>Name product</td>
        <td>Price product</td>
        <td>Description product</td>
        <td>Producer</td>
        <td>Update</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a> </td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=update&id=${product.getId()}">update</a> </td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
