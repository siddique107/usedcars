<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Customer Login</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

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
        padding: 30px;
    }
    .section-title {
        font-weight: 700;
        margin-bottom: 20px;
    }
    .form-label {
        font-weight: 600;
    }
    .login-btn {
        background: linear-gradient(135deg, #0d6efd, #20c997);
        border: none;
        font-weight: 600;
    }
    .login-btn:hover {
        background: linear-gradient(135deg, #0b5ed7, #17a589);
    }
</style>
</head>
<body>

<div class="container">
    <div class="col-lg-4 mx-auto">
        <div class="card">
            <h4 class="section-title mb-4"><i class="bi bi-person-lock"></i> Customer Login</h4>
            <form action="/Login" method="post">
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input type="text" class="form-control" name="username" autocomplete="off" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" required>
                </div>
                <button type="submit" class="btn login-btn w-100 text-white">
                    <i class="bi bi-box-arrow-in-right"></i> Login
                </button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
