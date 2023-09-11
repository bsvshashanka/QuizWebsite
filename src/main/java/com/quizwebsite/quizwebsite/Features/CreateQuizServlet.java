package com.quizwebsite.quizwebsite.Features;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.sql.*;

@Controller
public class CreateQuizServlet extends HttpServlet {
    @RequestMapping("createQuizServlet")
    public void createQuiz(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException, ClassNotFoundException {
        request.setAttribute("quizname",request.getParameter("quizname"));
        String dbUrl = "jdbc:mysql://localhost:3306/Quiz";
        String dbUsername = "root";
        String dbPassword = "konaseema@68";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        String createQuizQuery = "INSERT INTO quiztable (creator,quizname) VALUES (?,?)";
        PreparedStatement createQuizPreparedStatement = connection.prepareStatement(createQuizQuery,Statement.RETURN_GENERATED_KEYS);
        createQuizPreparedStatement.setString(1,request.getSession().getAttribute("username").toString());
        createQuizPreparedStatement.setString(2,request.getAttribute("quizname").toString());
        createQuizPreparedStatement.execute();
        ResultSet resultSet = createQuizPreparedStatement.getGeneratedKeys();
        int lastIndex = -1;
        while (resultSet.next()){
            lastIndex = resultSet.getInt(1);
        }
        request.setAttribute("lastIndex",lastIndex);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("addQuestions.jsp");
        requestDispatcher.forward(request,response);
    }
}
