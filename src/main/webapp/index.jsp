<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Used Cars Portal | Home</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #0d6efd, #20c997);
            min-height: 100vh;
        }
        .navbar-brand {
            font-weight: 700;
            font-size: 1.4rem;
        }
        .card {
            border-radius: 18px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.25);
        }
        .login-btn, .btn-custom {
            font-weight: 600;
        }
        .login-btn {
            background: linear-gradient(135deg, #0d6efd, #20c997);
            border: none;
        }
        .login-btn:hover, .btn-custom:hover {
            background: linear-gradient(135deg, #0b5ed7, #17a589);
        }
        .section-title {
            font-weight: 700;
        }
        footer {
            background-color: rgba(0,0,0,0.85);
            color: #fff;
            padding: 20px 0;
            margin-top: 40px;
        }
        .car-card {
            transition: 0.3s;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            height: 100%;
        }
        .car-card:hover {
            transform: scale(1.03);
        }
        .car-card img {
            height: 180px;
            object-fit: cover;
            width: 100%;
            border-radius: 10px;
        }
        .car-card h5 {
            margin: 5px 0;
            font-size: 0.9rem;
        }
        .admin-card {
            min-height: 220px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .icon-circle {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 15px;
            font-size: 1.5rem;
        }
        .bg-enquiry {
            background: #ffc107;
            color: #fff;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
    <div class="container">
        <a class="navbar-brand" href="#"><i class="bi bi-car-front-fill"></i> Used Cars Portal</a>
        <span class="navbar-text text-light">Find Trusted Pre-Owned Cars</span>
    </div>
</nav><div class="container mt-4">
    <div class="row">
        <div class="col-md-4">
            <div class="card text-white shadow-lg"
                 style="background: linear-gradient(135deg, #6f42c1, #d63384); border-radius: 18px;">
                
                <div class="card-body d-flex align-items-center">
                    
                    <!-- Car Icon -->
                    <div class="me-4">
                        <i class="bi bi-car-front-fill" style="font-size: 3rem;"></i>
                    </div>

                    <!-- Text + Count -->
                    <div>
                        <h5 class="card-title mb-1">Total Cars</h5>
                        <h2 class="fw-bold mb-0">${Totalcars}</h2>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="container mt-4">
    <div class="row">
        <div class="col-md-4">
            <div class="card text-white shadow-lg"
                 style="background: linear-gradient(135deg, #6f42c1, #198754); border-radius: 18px;">
                
                <div class="card-body d-flex align-items-center">
                    
                    <!-- Car Icon -->
                    <div class="me-4">
                        <i class="bi bi-car-front-fill" style="font-size: 3rem;"></i>
                    </div>

                    <!-- Text + Count + Percentage -->
                    <div>
                        <h5 class="card-title mb-1">Total Available Cars</h5>
                        <h2 class="fw-bold mb-0">${Availabelcars} 
                            <span style="font-size: 1rem; color: #d4edda;">
                                (${availablePercent}%) ↑
                            </span>
                        </h2>
                    </div>

                </div>
            </div>
        </div>
<div class="col-md-4">
    <div class="card text-white shadow-lg"
         style="background: linear-gradient(135deg, #6f42c1, #dc3545); border-radius: 18px;">
        
        <div class="card-body d-flex align-items-center">
            
            <!-- Car Icon -->
            <div class="me-4">
                <i class="bi bi-car-front-fill" style="font-size: 3rem;"></i>
            </div>

            <!-- Text + Count + Percentage -->
            <div>
                <h5 class="card-title mb-1">Total Unavailable Cars</h5>
                <h2 class="fw-bold mb-0">${UnavailableCars} 
                    <span style="font-size: 1rem; color: #f8d7da;">
                        (${unavailablePercent}%) ↓
                    </span>
                </h2>
            </div>

        </div>
    </div>
</div>


<div class="container mt-5">
    <div class="row g-4">
        <!-- Cars Listing Section -->
        <c:forEach items="${carslist}" var="list">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card car-card p-3 h-100">
                    <img src="${list.image_path}" alt="Car Image">
                    <h5 class="mt-3">Brand: ${list.brand}</h5>
                    <h5>Model: ${list.model}</h5>
                    <h5>Fuel: ${list.fueltype}</h5>
                    <h5>Kms: ${list.kilometers}</h5>
                    <h5>Price: ₹${list.price}</h5>
                    <h5>Owner: ${list.ownername}</h5>
                    <h5>Mobile: ${list.mobile}</h5>
                    
                </div>
            </div>
        </c:forEach>

      
    <!-- Add Enquiry -->
    <div class="col-md-4">
        <div class="card admin-card p-4 text-center">
            <div class="icon-circle bg-enquiry"><i class="bi bi-chat-dots-fill"></i></div>
            <h5>Add Enquiry</h5>
            <p>Register customer enquiry</p>
            <a href="/NewEnquiry" class="btn btn-secondary">Open</a>
        </div>
    </div>
    </div>
</div>

<!-- Footer -->
<footer class="mt-5">
    <div class="container text-center">
        <p class="mb-1">Trusted Marketplace for Quality Pre-Owned Vehicles</p>
        <p class="mb-0">Powered by Spring Boot & Bootstrap</p>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
