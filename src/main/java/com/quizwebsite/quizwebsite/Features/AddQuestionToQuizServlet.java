package com.quizwebsite.quizwebsite.Features;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import com.quizwebsite.quizwebsite.Questions.Question;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Controller
public class AddQuestionToQuizServlet {

    @PostMapping("/addQuestionToQuizServlet")
    @ResponseBody
    public void addQuestionToQuiz(@RequestBody List<Question> questions,
                                    HttpServletRequest request,
                                    HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
        String dbUrl = "jdbc:mysql://localhost:3306/Quiz";
        String dbUsername = "root";
        String dbPassword = "konaseema@68";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        String addQuestion = "INSERT INTO questions (question,option1,option2,option3,option4,quiz_id) VALUES (?,?,?,?,?,?)";
        String questionAnswer = "INSERT INTO answers VALUES (?,?)";
        for (Question question : questions) {
            // Process each question, e.g., save to a database
            PreparedStatement addQuestionPreparedStatement = connection.prepareStatement(addQuestion);
            addQuestionPreparedStatement.setString(1,question.getQuestionText());
            addQuestionPreparedStatement.setString(2,question.getOptions().get(0));
            addQuestionPreparedStatement.setString(3,question.getOptions().get(1));
            addQuestionPreparedStatement.setString(4, question.getOptions().get(2));
            addQuestionPreparedStatement.setString(5,question.getOptions().get(3));
            addQuestionPreparedStatement.setInt(6,question.getQuizIndex());
            addQuestionPreparedStatement.execute();
            PreparedStatement addAnswer = connection.prepareStatement(questionAnswer);
            addAnswer.setInt(1,question.getQuizIndex());
            addAnswer.setString(2,question.getAnswer());
            addAnswer.execute();
        }

        // Close the database connection
        connection.close();

        // After processing the questions, forward the request to myQuizzes.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("myQuizzes.jsp");
        dispatcher.forward(request, response);
    }
}
