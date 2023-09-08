package com.quizwebsite.quizwebsite;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class CreateQuiz extends HttpServlet {
    @RequestMapping("createQuizServlet")
    public void createQuiz(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie[] cookies = request.getCookies();
        boolean redirected = false;
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("username")){
                redirected = true;
                System.out.println(cookie.getValue());
                response.sendRedirect("createQuiz.jsp");
            }
        }
        if(!redirected){
            response.sendRedirect("login.jsp");
        }
    }
}
