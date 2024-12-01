<%-- 
    Document   : analyze
    Created on : 01-Dec-2024, 6:52:51 pm
    Author     : Chirag Badani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analyze - Stock Analyzer</title>
    
    <style>
              body, html {
  margin: 0;
  padding: 0;
  font-family: 'Arial', sans-serif;
  background: #0d1117;
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
  background-color: #0d1117;
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
        /* Main Section Styling */
        .main-analyze {
            margin-top: -100PX;
            padding: 50px 20px;
            text-align: center;
            background-color: #0a0a0a;
            color: #ffffff;
        }

        .main-analyze h1 {
            font-size: 3rem;
            margin-bottom: 30px;
            color: #4caf50;
            text-shadow: 0px 0px 10px #4caf50;
        }

        /* Cards Section */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .card {
            width: 300px;
            height: 350px;
            background: rgba(30, 30, 30, 0.9);
            border-radius: 15px;
            padding: 20px;
            color: #ffffff;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.6);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 50px rgba(0, 255, 255, 0.5);
        }

        .card h2 {
            font-size: 2rem;
            margin-bottom: 15px;
            color: #00ffff;
        }

        .card p {
            font-size: 1rem;
            line-height: 1.8;
            color: rgba(255, 255, 255, 0.8);
        }

        .card .btn {
            margin-top: 20px;
            padding: 10px 20px;
            background: linear-gradient(90deg, #00ffff, #ff00ff);
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            color: #0a0a0a;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .card .btn:hover {
            background: linear-gradient(90deg, #ff00ff, #00ffff);
            color: #ffffff;
            box-shadow: 0 5px 15px rgba(0, 255, 255, 0.5);
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header class="header">
        <div class="logo">
            <a href="homepage.jsp"><img src="Images/Logo1.png" alt="Stock Analyzer Logo"></a>
        </div>
        <nav class="navbar">
            <ul>
                <li><a href="homepage.jsp">Home</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="news.jsp">News</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content Section -->
    <div class="main-analyze">
        <h1>Analyze and Learn</h1>
        <div class="card-container">
            <!-- Analyze Card -->
            <div class="card">
                <h2>Analyze</h2>
                <p>Discover stock trends and patterns with advanced analysis tools. Understand historical data to make better investment decisions.</p>
                <button class="btn">Learn More</button>
            </div>
            <!-- Predict Card -->
            <div class="card">
                <h2>Predict</h2>
                <p>Utilize machine learning algorithms to predict future stock movements. Get accurate forecasts to guide your investments.</p>
                <button class="btn">Explore Predictions</button>
            </div>
            <!-- Study Material Card -->
            <div class="card">
                <h2>Study Material</h2>
                <p>Access comprehensive study materials on stock analysis fundamentals, strategies, and techniques to enhance your knowledge.</p>
                <button class="btn">Start Learning</button>
            </div>
        </div>
    </div>
</body>
</html>

