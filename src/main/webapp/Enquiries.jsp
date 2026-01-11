<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enquiry List</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container mt-4">
    <h3 class="text-center mb-4">Enquiry Details</h3>

    <table class="table table-bordered table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Enquiry Date</th>
                <th>Customer Name</th>
                <th>Mobile</th>
                <th>Remarks</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${List}" var="enq">
                <tr>
                    <td>${enq.enquiryid}</td>
                    <td>${enq.enquirydate}</td>
                    <td>${enq.customername}</td>
                    <td>${enq.mobile}</td>
                    <td>${enq.remarks}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
