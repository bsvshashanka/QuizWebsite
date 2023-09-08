package com.quizwebsite.quizwebsite;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
public class SignupStudent extends HttpServlet {
    @RequestMapping("signupStudent")
    private void signupStudent(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Connection connection = JDBCConnect.init();
        String addStudentQuery = "INSERT INTO User_Student VALUES (?,?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(addStudentQuery);
        preparedStatement.setString(1,name);
        preparedStatement.setString(2,username);
        preparedStatement.setString(3,email);
        preparedStatement.setString(4,password);
        preparedStatement.executeUpdate();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
        request.setAttribute("message","login with your credentials");
        requestDispatcher.forward(request,response);
    }
}
