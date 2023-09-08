package com.quizwebsite.quizwebsite;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class MyQuizzes extends HttpServlet {
    @RequestMapping("myQuizzesServlet")
    public void myQuizzes(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie[] cookies = request.getCookies();
        boolean redirected = false;
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("username")){
                redirected = true;
                System.out.println(cookie.getValue());
                response.sendRedirect("myQuizzes.jsp");
            }
        }
        if(!redirected){
            response.sendRedirect("login.jsp");
        }
    }
}
