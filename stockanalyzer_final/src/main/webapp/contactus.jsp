<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stock Analyzer - Contact Us</title>
    <style>
    /* Reset and base styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body, html {
    width: 100%;
    height: 100%;
    font-family: 'Roboto', sans-serif;
    background: #0d1117;
    color: #ffffff;
    overflow: hidden;
}

/* Animated background effect */
body::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(45deg, rgba(0, 255, 255, 0.15), rgba(255, 0, 255, 0.15));
    z-index: -2;
    filter: blur(100px);
    animation: backgroundShift 6s infinite alternate;
}

@keyframes backgroundShift {
    0% { transform: scale(1); }
    100% { transform: scale(1.2); }
}

/* Header Styling */
.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    background-color: #0d1117;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    position: sticky;
    top: 0;
    z-index: 1000;
}

.logo img {
    width: 150px;
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

/* Container styling */
.container {
    width: 450px;
    padding: 30px;
    margin: auto;
    background: rgba(30, 30, 30, 0.9);
    border: 1px solid rgba(0, 255, 255, 0.3);
    border-radius: 20px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.8), 0 0 20px rgba(0, 255, 255, 0.5);
    backdrop-filter: blur(20px);
    text-align: center;
    position: relative;
    overflow: hidden;
}

.container::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: radial-gradient(circle, rgba(0, 255, 255, 0.3), rgba(255, 0, 255, 0));
    animation: pulse 8s infinite;
    z-index: -1;
}

@keyframes pulse {
    0% { transform: scale(0.8); opacity: 0.5; }
    100% { transform: scale(1.2); opacity: 0.1; }
}

.container h1 {
    font-size: 2.5rem;
    margin-bottom: 15px;
    background: linear-gradient(90deg, #00ffff, #ff00ff);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.container p {
    margin-bottom: 20px;
    font-size: 1rem;
    color: rgba(255, 255, 255, 0.7);
}

/* Form styling */
.form-group {
    margin-bottom: 15px;
    position: relative;
}

input, textarea, select {
    width: 100%;
    padding: 12px;
    background: rgba(255, 255, 255, 0.1);
    border: none;
    border-radius: 8px;
    color: #fff;
    font-size: 1rem;
    transition: 0.3s;
}

input:focus, textarea:focus, select:focus {
    outline: none;
    background: rgba(255, 255, 255, 0.2);
    box-shadow: 0 0 10px rgba(0, 255, 255, 0.5);
}

textarea {
    resize: none;
    height: 120px;
}

/* Submit button */
.btn {
    width: 100%;
    padding: 12px;
    background: linear-gradient(90deg, #00ffff, #ff00ff);
    border: none;
    border-radius: 8px;
    font-size: 1rem;
    font-weight: bold;
    cursor: pointer;
    color: #0a0a0a;
    transition: 0.3s;
}

.btn:hover {
    background: linear-gradient(90deg, #ff00ff, #00ffff);
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(0, 255, 255, 0.5);
}

    </style>
</head>
<body>
    <header class="header">
      <div class="logo">
          <a href="homepage.jsp"><img src="Images/Logo1.png" alt="Stock Analyzer Logo"></a>
    </div>
    <nav class="navbar">
      <ul>
          <li><a href="homepage.jsp">Home</a></li>
        <li><a href="news.jsp">News</a></li>
        <li><a href="analyze.jsp">Analyze & Predict</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
        
      </ul>
    </nav>
  </header>
    <div class="container">
        <h1>Contact Us</h1>
        
        <form>
            <div class="form-group">
                <input type="text" placeholder="Your Name" required>
            </div>
            <div class="form-group">
                <input type="email" placeholder="Your Email" required>
            </div>
            <div class="form-group">
                <input type="tel" placeholder="Your Phone Number" required>
            </div>
            <div class="form-group">
                <select required>
                    <option value="" disabled selected>Choose Inquiry Type</option>
                    <option value="support">Support</option>
                    <option value="feedback">Feedback</option>
                    <option value="investment">Investment Queries</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="form-group">
                <textarea placeholder="Your Message" required></textarea>
            </div>
            <button type="submit" class="btn">Send Message</button>
        </form>
    </div>
</body>
</html>
