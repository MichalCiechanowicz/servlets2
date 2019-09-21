package pl.sda.servlets.six;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/cookie")
public class CookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        response.setContentType("text/html");
        writer.println("<h1>Cookie:</h1><br>");
        Cookie newCookie = new Cookie("languaguePreferences", "polish");
        newCookie.setMaxAge(60 * 60 * 24);
        response.addCookie(newCookie);

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            writer.println("<h3>" + cookie.getName() + "</h3><br>");
            writer.println("<h3>" + cookie.getValue() + "</h3><br>");
        }
    }

}
