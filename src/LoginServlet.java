import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<User> users = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        for (User user : users) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                request.setAttribute("fullName", user.getFullName());
                request.getRequestDispatcher("welcome.jsp").forward(request, response);
                return;
            }
        }

        response.sendRedirect("login.jsp?error=true");
    }
}
