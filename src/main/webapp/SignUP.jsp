
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SignUp - Complaint Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #4facfe, #00f2fe); /* New lighter blue gradient */
            height: 100vh;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            background: linear-gradient(to right, #16222A, #3A6073); /* Deep elegant blue */
            padding: 30px;
        }

        h3 {
            text-align: center;
            font-weight: bold;
            color: transparent;
            background-image: linear-gradient(to right, #00c6ff, #0072ff);
            -webkit-background-clip: text;
            background-clip: text;
        }

        label {
            color: #e0e0e0;
            font-weight: 500;
        }

        input.form-control, select.form-control {
            background-color: #1e2a38;
            border: 1px solid #3b7ddd;
            color: #ffffff;
            border-radius: 10px;
            transition: 0.3s ease-in-out;
        }

        input.form-control:focus, select.form-control:focus {
            background-color: #16222a;
            border-color: #00c9ff;
            box-shadow: 0 0 6px #00c9ff;
            color: white;
        }

        input:focus {
            background-color: transparent;
            outline: none;
        }

        .btn-primary {
            background: linear-gradient(to right, #00c6ff, #0072ff);
            border: none;
            font-weight: bold;
            color: white;
            transition: all 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background: linear-gradient(to right, #0072ff, #00c6ff);
            transform: scale(1.05);
        }

        .signup {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .alert {
            margin-top: 10px;
            text-align: center;
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container d-flex flex-column justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="col-md-5">
        <div class="card login-card p-4">
            <div class="card-body">
                <h3 class="mb-4">Sign Up</h3>
                <form action="singup" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control rounded-3" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control rounded-3" id="password" name="password" required>
                    </div>
                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <input type="text" class="form-control rounded-3" id="role" name="role" value="user" readonly>
                    </div>

                    <input type="hidden" id="id" name="id" />

                    <% String errorMessage = (String) request.getAttribute("errorMessage");
                        if (errorMessage != null) { %>
                    <div class="alert alert-danger" role="alert">
                        <%= errorMessage %>
                    </div>
                    <% } %>

                    <div class="signup">
                        <button type="submit" class="btn btn-primary rounded-3 px-4">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
