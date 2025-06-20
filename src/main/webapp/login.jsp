<%--<%@ page language="java" contentType="text/html; charset=UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Login - Complaint Management System</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background: linear-gradient(to right, #4facfe, #00f2fe); /* Light blue gradient */--%>
<%--            height: 100vh;--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;--%>
<%--        }--%>

<%--        .login-card {--%>
<%--            border: none;--%>
<%--            border-radius: 20px;--%>
<%--            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.25);--%>
<%--            background: linear-gradient(to right, #0f2027, #203a43, #2c5364); /* dark bluish gradient */--%>
<%--            padding: 30px;--%>
<%--        }--%>

<%--        label {--%>
<%--            color: #e0e0e0;--%>
<%--            font-weight: 500;--%>
<%--        }--%>

<%--        input.form-control, select.form-control {--%>
<%--            background-color: #1e2a38;--%>
<%--            border: 1px solid #3b7ddd;--%>
<%--            color: #ffffff;--%>
<%--            border-radius: 10px;--%>
<%--            transition: 0.3s ease-in-out;--%>
<%--        }--%>

<%--        input.form-control:focus, select.form-control:focus {--%>
<%--            background-color: #16222a;--%>
<%--            border-color: #00c9ff;--%>
<%--            box-shadow: 0 0 6px #00c9ff;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        .form-control:focus {--%>
<%--            box-shadow: none;--%>
<%--            border-color: #00c9ff;--%>
<%--        }--%>

<%--        .btn-primary {--%>
<%--            background: linear-gradient(to right, #00c6ff, #0072ff);--%>
<%--            border: none;--%>
<%--            font-weight: bold;--%>
<%--            color: white;--%>
<%--            transition: 0.3s ease-in-out;--%>
<%--        }--%>

<%--        .btn-primary:hover {--%>
<%--            background: linear-gradient(to right, #0072ff, #00c6ff);--%>
<%--            transform: scale(1.03);--%>
<%--        }--%>

<%--        .loginBtn, #signup {--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            margin-top: 15px;--%>
<%--        }--%>

<%--        #signup {--%>
<%--            margin: 10px;--%>
<%--        }--%>

<%--        input:focus {--%>
<%--            background-color: transparent;--%>
<%--            outline: none;--%>
<%--        }--%>
<%--    </style>--%>

<%--</head>--%>
<%--<body>--%>
<%--<div class="container d-flex flex-column justify-content-center align-items-center" style="min-height: 100vh;">--%>
<%--    <div class="col-md-5">--%>
<%--        <div class="card login-card p-4">--%>
<%--            <div class="card-body">--%>
<%--                <h3 class="text-center mb-4">Login</h3>--%>
<%--                <form action="LoginServlet" method="post">--%>
<%--                    <div class="mb-3">--%>
<%--                        <label for="username" class="form-label">Username</label>--%>
<%--                        <input type="text" class="form-control rounded-3" id="username" name="username" placeholder="Enter your username" required>--%>
<%--                    </div>--%>
<%--                    <div class="mb-3">--%>
<%--                        <label for="password" class="form-label">Password</label>--%>
<%--                        <input type="password" class="form-control rounded-3" id="password" name="password" placeholder="Enter your password" required>--%>
<%--                    </div>--%>

<%--                    <p>Don't have an account? please Sign Up</p>--%>


<%--                    <div class="loginBtn gap-2">--%>
<%--                        <button type="submit" class="btn btn-primary rounded-3">Login</button>--%>
<%--                        <a href="SignUp.jsp" class="btn btn-primary rounded-3 d-flex align-items-center justify-content-center">SignUp</a>--%>
<%--                    </div>--%>

<%--                    <% if (request.getParameter("error") != null) { %>--%>
<%--                    <p class="text-danger mt-2">Invalid credentials</p>--%>
<%--                    <% } %>--%>

<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Complaint Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            height: 100vh;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.25);
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            padding: 40px;
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

        input.form-control {
            background-color: #1e2a38;
            border: 1px solid #3b7ddd;
            color: #ffffff;
            border-radius: 10px;
            transition: 0.3s ease-in-out;
        }

        input.form-control:focus {
            background-color: #16222a;
            border-color: #00c9ff;
            box-shadow: 0 0 6px #00c9ff;
            color: white;
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

        .loginBtn {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }

        .signup-text {
            color: #d3d3d3;
            text-align: center;
            margin-top: 15px;
        }

        .text-danger {
            text-align: center;
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container d-flex flex-column justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="col-md-5 col-sm-8">
        <div class="card login-card">
            <div class="card-body">
                <h3 class="mb-4">Login</h3>
                <form action="LoginServlet" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>

                    <% if (request.getParameter("error") != null) { %>
                    <p class="text-danger mt-2">Invalid username or password</p>
                    <% } %>

                    <div class="loginBtn">
                        <button type="submit" class="btn btn-primary px-4 rounded-3">Login</button>
                        <a href="SignUp.jsp" class="btn btn-primary px-4 rounded-3">Sign Up</a>
                    </div>

                    <p class="signup-text">Don't have an account? <a href="SignUp.jsp" style="color: #00c9ff;">Create Account</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>


