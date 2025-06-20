<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Complaint Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        nav {
            background: linear-gradient(to right, #1F1C2C, #928DAB); /* Elegant dark nav gradient */
            z-index: 1;
        }

        #logo {
            border-radius: 50%;
        }

        body {
            background: linear-gradient(to right, #283E51, #485563); /* Muted tech blue */
        }

        #main {
            border: 3px solid #FFC107; /* Golden yellow border */
            background-color: #2C3E50; /* Darker card background */
            width: 500px;
            height: 500px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.4);
            border-radius: 1rem;
            opacity: 0.95;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            padding: 20px;
        }

        #loginBtn {
            background: linear-gradient(to right, #00b4db, #0083b0); /* Blue gradient button */
            border: none;
            color: white;
            font-weight: 600;
            margin-top: 30px;
            padding: 10px 30px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        #loginBtn:hover {
            background: linear-gradient(to right, #0083b0, #00b4db);
            transform: scale(1.05);
            color: white;
        }

        #main img {
            width: 100%;
            height: auto;
            object-fit: contain;
            border-radius: 1rem;
            margin-bottom: 15px;
        }

        h1 {
            color: #f8f9fa;
            font-size: 1.5rem;
            font-weight: bold;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<nav class="navbar">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#">
            <img src="assests/lo go.png" id="logo" alt="Logo" width="50" height="44" class="d-inline-block align-text-top">
            Complaint Management System
        </a>
    </div>
</nav>

<main>
    <div class="container text-white p-5">
        <div class="row justify-content-center">
            <div class="col-md-6" id="main">
                <img src="assests/cms.jpg" alt="CMS Image">
                <h1>Complaint Management System</h1>
                <a href="login.jsp" class="btn" id="loginBtn">Login</a>
            </div>
        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
</body>
</html>
