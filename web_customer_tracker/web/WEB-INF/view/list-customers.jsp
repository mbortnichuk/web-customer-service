<%--
  Created by IntelliJ IDEA.
  User: mbortnic
  Date: 2019-05-01
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>List Customers</title>
</head>
<body>
<%--    List Customers - coming soon...--%>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <div id="content">
            <table>

                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                </tr>

                <c:forEach var="tempCustomer" items="${customers}">
                    <tr>
                        <td> ${tempCustomer.firstName} </td>
                        <td> ${tempCustomer.lasttName} </td>
                        <td> ${tempCustomer.email} </td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>
</body>
</html>
