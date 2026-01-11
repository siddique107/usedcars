<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <div class="card p-4 shadow">
        <h4 class="text-center mb-4">Edit Car Details</h4>

        <form action="/updateCar" method="post">
            
                           <label>CarId</label>
            <input type="number" name="carid" value="${car.carid}"class="form-control" >

            <div class="mb-3">
                <label>Brand</label>
                <input type="text" name="brand" value="${car.brand}" class="form-control">
            </div>

            <div class="mb-3">
                <label>Model</label>
                <input type="text" name="model" value="${car.model}" class="form-control">
            </div>

            <div class="mb-3">
                <label>Fuel Type</label>
                <input type="text" name="fueltype" value="${car.fueltype}" class="form-control">
            </div>

            <div class="mb-3">
                <label>Kilometers</label>
                <input type="number" name="kilometers" value="${car.kilometers}" class="form-control">
            </div>

            <div class="mb-3">
                <label>Price</label>
                <input type="number" name="price" value="${car.price}" class="form-control">
            </div>

            <div class="mb-3">
                <label>Owner Name</label>
                <input type="text" name="ownername" value="${car.ownername}" class="form-control">
            </div>

            <div class="mb-3">
                <label>Mobile</label>
                <input type="text" name="mobile" value="${car.mobile}" class="form-control">
            </div>
            
    <!-- Old Image Path -->
    <input type="hidden" name="image_path" value="${car.image_path}">

    <!-- Show Existing Image -->
    <div class="mb-3 text-center">
        <img src="${car.image_path}" class="img-fluid rounded" 
             style="max-height: 200px;">
        <p class="text-muted mt-2">Current Image</p>
    </div>



            <div class="text-center">
                <button class="btn btn-success">
                    <i class="bi bi-check-circle"></i> Update Car
                </button>
                <a href="/admineditcar" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>
