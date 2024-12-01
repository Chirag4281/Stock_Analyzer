<%-- 
    Document   : homepage
    Created on : 01-Dec-2024, 6:58:35 pm
    Author     : Chirag Badani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Stock Analyzer</title>
  <style>
      /* Reset */
body, h1, h2, p, ul, li, a, form, input, button {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
}

.header {
  
    color: #fff;
    padding: 1rem 2rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.header h1 {
    font-size: 1.5rem;
}

.header nav ul {
    display: flex;
    list-style: none;
}

.header nav ul li {
    margin: 0 1rem;
}

.header nav ul li a {
    color: #fff;
    text-decoration: none;
}

.home-page {
    padding: 2rem;
}

.market-overview, .stock-search, .educational-content {
    margin-bottom: 2rem;
}

.market-overview .market-data {
    display: flex;
    justify-content: space-between;
}

.market-data .index {
    color: black;
    border: 1px solid #ccc;
    padding: 1rem;
    width: 30%;
    text-align: center;
    border-radius: 5px;
    background: #f9f9f9;
}

.stock-search form {
    display: flex;
    gap: 1rem;
    margin-top: 1rem;
}

.stock-search input {
    flex: 1;
    padding: 0.5rem;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.stock-search button {
    padding: 0.5rem 1rem;
    background: #333;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.educational-content ul {
    list-style: none;
    margin-top: 1rem;
}

.educational-content ul li {
    margin-bottom: 0.5rem;
}

.educational-content ul li a {
    color: #007BFF;
    text-decoration: none;
}

.educational-content ul li a:hover {
    text-decoration: underline;
}

.footer {
    background: #333;
    color: #fff;
    text-align: center;
    padding: 1rem 0;
    margin-top: 2rem;
}

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

  </style>
</head>
<body>
  <header class="header">
      <div class="logo">
          <a href="index.jsp"><img src="Images/Logo1.png" alt="Logo"></a>
    </div>
    <nav class="navbar">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="news.jsp">News</a></li>
        <li><a href="analyze.jsp">Analyze & Predict</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
        <li><a href="contactus.jsp">Contact Us</a></li>
      </ul>
    </nav>
  </header>

    <!-- Main Content -->
    <main class="home-page">
        <!-- Market Overview Section -->
        <section class="market-overview">
            <h2>Market Overview</h2>
            <div class="market-data">
                <div class="index">
                    <h3>S&P 500</h3>
                    <p>Current Value: 4500</p>
                    <p>Change: +0.45%</p>
                </div>
                <div class="index">
                    <h3>NASDAQ</h3>
                    <p>Current Value: 13000</p>
                    <p>Change: -0.15%</p>
                </div>
                <div class="index">
                    <h3>Dow Jones</h3>
                    <p>Current Value: 35000</p>
                    <p>Change: +0.30%</p>
                </div>
            </div>
        </section>

        <!-- Search Section -->
        <section class="stock-search">
            <h2>Search for Stock Data</h2>
            <form action="#" method="POST">
                <input type="text" placeholder="Enter Stock Ticker" name="stock-ticker" required>
                <button type="submit">Search</button>
            </form>
        </section>

        <!-- Educational Content Section -->
        <section class="educational-content">
            <h2>Learn the Basics of Stock Analysis</h2>
            <p>New to stock analysis? Start here:</p>
            <ul>
                <li><a href="#">What is P/E Ratio?</a></li>
                <li><a href="#">How to Read Stock Charts?</a></li>
                <li><a href="#">Understanding Fundamental Analysis</a></li>
                <li><a href="#">Technical Indicators Explained</a></li>
            </ul>
        </section>
    </main>

    <!-- Footer Section -->
    <footer class="footer">
        <p>&copy; 2024 Stock Analyzer. All rights reserved.</p>
    </footer>
</body>
</html>
