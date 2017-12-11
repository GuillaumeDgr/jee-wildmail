package fr.wildcodeschool.wildmail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MailContentServlet")
public class MailContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String createFromValue = (String) request.getSession().getAttribute("loginEmailValue");
        String createToValue = request.getParameter("createToValue");
        String createContentValue = request.getParameter("createContentValue");

        MailBean mailBean = new MailBean();
        mailBean.setFrom(createFromValue);
        mailBean.setTo(createToValue);
        mailBean.setContent(createContentValue);
        request.setAttribute("mailBean", mailBean);

        this.getServletContext().getRequestDispatcher("/mail_content.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
