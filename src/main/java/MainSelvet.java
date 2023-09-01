import com.sun.net.httpserver.HttpServer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MainSelvet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Gunakan RequestDispatcher untuk mengarahkan permintaan ke index.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");

        // Lakukan pengiriman (forward) permintaan ke halaman JSP
        dispatcher.forward(request, response);
    }
}
