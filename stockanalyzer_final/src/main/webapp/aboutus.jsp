<%-- 
    Document   : aboutus
    Created on : 01-Dec-2024, 6:38:25?pm
    Author     : Chirag Badani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Stock Analyzer</title>
    
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

        /* About Us Styling */
        .about-us {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-around;
            padding: 50px 20px;
        }

        .about-us img {
            width: 40%;
            max-width: 400px;
            height: 400px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.6);
            transition: transform 0.3s ease;
        }

        .about-us img:hover {
            transform: scale(1.05);
        }

        .about-us-content {
            flex: 1;
            max-width: 600px;
            margin-left: 20px;
        }

        .about-us-content h2 {
            font-size: 2.5rem;
            margin-bottom: 15px;
            color: #4caf50;
            text-shadow: 0px 0px 10px #4caf50;
        }

        .about-us-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: rgba(255, 255, 255, 0.8);
            margin-bottom: 20px;
        }

        .about-us-content p strong {
            color: #00ffff;
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
        
        <li><a href="news.jsp">News</a></li>
        <li><a href="analyze.jsp">Analyze & Predict</a></li>
        <li><a href="contactus.jsp">Contact Us</a></li>
        
      </ul>
        </nav>
    </header>

    <!-- About Us Section -->
    <div class="about-us">
        <img src="Images/aboutus.png" alt="Stock Analysis">
        <div class="about-us-content">
            <h2>About Us</h2>
            <p>
                Welcome to <strong>Stock Analyzer</strong>, a platform designed to educate and assist users in understanding and analyzing the stock market. 
                As a TY BSc IT student, I have created this project to help everyone beginners and seasoned traders alike gain insights into stock patterns 
                and make informed decisions.
            </p>
            <p>
                Our goal is to make stock analysis accessible to everyone through powerful tools, easy-to-understand study materials, and accurate data. 
                Join us on this journey to financial literacy and market success!
            </p>
            <p><strong>Empowering your financial journey, one stock at a time!</strong></p>
        </div>
    </div>
</body>
</html>

