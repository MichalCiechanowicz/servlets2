package pl.sda.servlets.seven;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/session")
public class SessionServlet extends HttpServlet {

    private static final String ATTRIBUTE_NAME = "welcomeCount";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        response.setContentType("text/html");

        HttpSession httpSession = request.getSession();
        if (httpSession.isNew()) {
            writer.println("<h1>Witaj Pierwszy raz na Stronie</h1><br>");
            httpSession.setAttribute(ATTRIBUTE_NAME, 1);
        } else if (httpSession.getAttribute(ATTRIBUTE_NAME) == null) {
            writer.println("<h1>Witaj Pierwszy raz na tej podstronie</h1><br>");
            httpSession.setAttribute(ATTRIBUTE_NAME, 1);
        } else {
            httpSession.setAttribute(ATTRIBUTE_NAME, (int) httpSession.getAttribute(ATTRIBUTE_NAME) + 1);
            writer.println("<h1>Witaj  " + httpSession.getAttribute(ATTRIBUTE_NAME) + " raz na Stronie</h1><br>");
        }
    }
}
