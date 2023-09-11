package com.quizwebsite.quizwebsite.Checks;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class IsAdmin extends HttpServlet {
    @RequestMapping("isAdmin")
    public void isAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();
        String typeOfUser = (String) httpSession.getAttribute("typeOfUser");
        if(typeOfUser!=null &&typeOfUser.equals("Admin")){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("createQuiz.jsp");
            requestDispatcher.forward(request,response);
        }
        else{
            response.sendRedirect("login.jsp");
        }
    }
}
