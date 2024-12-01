<%-- 
    Document   : login_registration
    Created on : 01-Dec-2024, 11:17:51 am
    Author     : Chirag Badani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stock Analyzer - Login & Register</title>
    <style>
        /* Reset and body styling */
         body, html {
  margin: 0;
  padding: 0;
  font-family: 'Arial', sans-serif;
  background: #0d1117;
  background-image: url("Images/BgProject.jpg");
  color: #ffffff;
  overflow-x: hidden;
}

/* Header Styling */
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 20px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  position: sticky;
  top: 0;
  z-index: 1000;
}

/* Logo Styling */
.logo img {
  width: 150px;
  height: 150px;
  padding: -30px;
 
  transition: transform 0.3s ease;
}



/* Navbar Styling */
.navbar ul {
  list-style: none;
  display: flex;
  gap: 20px;
  margin: 0;
  padding: 0;
}

.navbar ul li {
  display: inline-block;
}

.navbar ul li a {
  text-decoration: none;
  color: #ffffff;
  font-size: 18px;
  padding: 10px 15px;
  border: 2px solid transparent;
  border-radius: 5px;
  transition: all 0.3s ease;
}

.navbar ul li a:hover {
  color: #0d1117;
  background: #4caf50;
  border-color: #4caf50;
  box-shadow: 0px 0px 10px 2px #4caf50;
}

/* Main Content Styling */
.main-content {
  text-align: center;
  padding: 100px 20px;
  animation: fadeIn 1.5s ease-in-out;
}

.main-content h1 {
  font-size: 3em;
  margin-bottom: 20px;
  color: #4caf50;
  text-shadow: 0px 0px 10px #4caf50;
}

.main-content p {
  font-size: 1.2em;
  color: #d1d5db;
}

/* Keyframes for Animation */
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(-30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        
      

        /* Form container with circular logo */
        .container {
            width: 520px;
            height: 400px;
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 15px;
            margin: auto;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(10px);
            text-align: center;
            overflow: hidden;
            position: relative;
        }

        /* Circular logo container */
        .logo-circle {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.2);
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .logo-circle img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
        }

        /* Tab and button styling */
        .tabs {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .tab {
            flex: 1;
            background: transparent;
            border: none;
            color: #ccc;
            padding: 10px;
            cursor: pointer;
            transition: color 0.3s ease;
            font-weight: bold;
        }

        .tab.active {
            color: #00d1ff;
            font-size: 1.1em;
        }

        /* Form styling */
        .form {
            display: none;
            flex-direction: column;
            gap: 12px;
            animation: fadeIn 0.5s ease;
        }

        .form.active {
            display: flex;
        }

        /* Input styling */
        input {
            width: 100%;
            padding: 10px;
            background: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 5px;
            color: #fff;
            transition: background 0.3s ease;
        }

        input::placeholder {
            color: #ccc;
        }

        input:focus {
            background: rgba(255, 255, 255, 0.2);
            outline: none;
        }

        /* Button styling */
        .btn {
            background: #00d1ff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            color: #1a1a2e;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 209, 255, 0.5);
        }

        /* Fade in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <header class="header">
      <div class="logo">
          <a href="index.html"><img src="Images/Logo1.png" alt="Logo"></a>
    </div>
    <nav class="navbar">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="#">Login</a></li>
        
        <li><a href="#">News</a></li>
        <li><a href="#">Analyze & Predict</a></li>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Contact Us</a></li>
        
      </ul>
    </nav>
    </header><br>
    <div class="container">
        <!-- Logo in Circular Container -->
        <div class="logo-circle">
            <img src="Images/Logo1.png" alt="Stock Analyzer Logo">
        </div>
        
        <div class="form-container">
            <div class="tabs">
                <button id="loginTab" class="tab active" onclick="showForm('login')">Login</button>
                <button id="registerTab" class="tab" onclick="showForm('register')">Register</button>
            </div>
            <div id="loginForm" class="form active">
                <input type="text" placeholder="Username" required>
                <input type="password" placeholder="Password" required>
                <button class="btn" onclick="login()">Login</button>
            </div>
            <div id="registerForm" class="form">
                <input type="text" placeholder="Username" required>
                <input type="email" placeholder="Email" required>
                <input type="password" placeholder="Password" required>
                <button class="btn" onclick="register()">Register</button>
            </div>
        </div>
    </div>
    <script>
        // Toggle between login and register forms
        function showForm(form) {
            document.getElementById("loginForm").classList.remove("active");
            document.getElementById("registerForm").classList.remove("active");
            document.getElementById("loginTab").classList.remove("active");
            document.getElementById("registerTab").classList.remove("active");

            if (form === "login") {
                document.getElementById("loginForm").classList.add("active");
                document.getElementById("loginTab").classList.add("active");
            } else {
                document.getElementById("registerForm").classList.add("active");
                document.getElementById("registerTab").classList.add("active");
            }
        }

        // Placeholder functions for login and register actions
        function login() {
            alert("Login clicked!");
        }

        function register() {
            alert("Register clicked!");
        }
    </script>
</body>
</html>

