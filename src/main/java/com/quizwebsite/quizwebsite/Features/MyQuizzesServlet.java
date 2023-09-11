package com.quizwebsite.quizwebsite.Features;

import jakarta.servlet.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class MyQuizzesServlet extends HttpServlet {
    @RequestMapping("myQuizzesServlet")
    public void myQuizzes(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
    }
}
