<!DOCTYPE html>
<html>
<head>
    <title>Stock News</title>
    <style>
        .news-item {
            border: 1px solid #ccc;
            padding: 15px;
            margin: 15px 0;
        }
    </style>
    <script>
        async function fetchNews() {
            try {
                const response = await fetch('http://localhost:5000/get_stock_news');

                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                const articles = await response.json();
                displayNews(articles);
            } catch (error) {
                console.error('Error fetching news:', error);
                document.getElementById('error').innerText = 'Failed to fetch news. Please try again.';
            }
        }

        function displayNews(articles) {
            const newsContainer = document.getElementById('news-container');
            newsContainer.innerHTML = ''; // Clear any existing content
            articles.forEach(article => {
                const articleDiv = document.createElement('div');
                articleDiv.className = 'news-item';
                articleDiv.innerHTML = `
                    <h3>${article.title}</h3>
                    <p>${article.description || 'No description available.'}</p>
                    <a href="${article.url}" target="_blank">Read More</a>
                `;
                newsContainer.appendChild(articleDiv);
            });
        }

        window.onload = fetchNews;
    </script>
</head>
<body>
    <h1>Latest Indian Stock News</h1>
    <p id="error" style="color: red;"></p>
    <div id="news-container"></div>
</body>
</html>
