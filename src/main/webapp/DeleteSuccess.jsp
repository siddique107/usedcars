<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Car Deletion Status</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #0d6efd, #20c997);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }
        .card {
            border-radius: 20px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.25);
            text-align: center;
            padding: 40px;
        }
        .btn-custom {
            background: linear-gradient(135deg, #0d6efd, #20c997);
            border: none;
            font-weight: 600;
        }
        .btn-custom:hover {
            background: linear-gradient(135deg, #0b5ed7, #17a589);
        }
        h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card col-md-6 mx-auto">
        <h2>Car Deletion Status</h2>
        <p class="lead">${message}</p>
<a href="AdminPanel.jsp" class="btn btn-custom mt-3">Back to Admin Panel</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
