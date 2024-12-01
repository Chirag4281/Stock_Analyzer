import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.json.JSONArray;
import org.json.JSONObject;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class NewsServlet extends HttpServlet {
    private static final String API_KEY = "1923d0f0b8de41edbdaefdd488180e01";  // Replace with your actual NewsAPI key
    private static final String API_URL = "https://newsapi.org/v2/everything?q=stocks+India&apiKey=" + API_KEY + "&language=en&sortBy=publishedAt";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        try {
            // Fetch news data from the API
            String jsonResponse = fetchNewsFromAPI();

            // Parse JSON response
            JSONArray articles = parseNewsArticles(jsonResponse);

            // Convert JSONArray to List<JSONObject>
            List<JSONObject> articleList = convertJSONArrayToList(articles);

            // Set articles in the request attribute
            request.setAttribute("articles", articleList);

            // Forward request to JSP page
            RequestDispatcher dispatcher = request.getRequestDispatcher("news.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("<h1>Error fetching news!</h1>");
        }
    }

    private String fetchNewsFromAPI() throws IOException {
        URL url = new URL(API_URL);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        connection.setConnectTimeout(5000);
        connection.setReadTimeout(5000);

        BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        StringBuilder responseBuilder = new StringBuilder();
        String line;

        while ((line = reader.readLine()) != null) {
            responseBuilder.append(line);
        }

        reader.close();
        return responseBuilder.toString();
    }

    private JSONArray parseNewsArticles(String jsonResponse) {
        JSONObject jsonObject = new JSONObject(jsonResponse);
        return jsonObject.optJSONArray("articles"); // Use optJSONArray to avoid null pointer exception
    }

    private List<JSONObject> convertJSONArrayToList(JSONArray jsonArray) {
        List<JSONObject> articleList = new ArrayList<>();
        if (jsonArray != null) {
            for (int i = 0; i < jsonArray.length(); i++) {
                articleList.add(jsonArray.getJSONObject(i));
            }
        }
        return articleList;
    }
}
