package com.quizwebsite.quizwebsite.LoginValidate;

import com.quizwebsite.quizwebsite.JDBCConnect;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.sql.*;
@Controller
public class LoginValidateAdmin extends HttpServlet {
    @RequestMapping("loginValidateAdmin")
    private void adminValidate(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Connection connection = JDBCConnect.init();
        String getPasswordQuery = "SELECT password_ FROM User_Admin User WHERE username = '"+username+"'";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(getPasswordQuery);
        boolean redirected = false;
        while(rs.next()){
            if(rs.getString("password_").equals(password)){
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("username",username);
                httpSession.setAttribute("typeOfUser","Admin");
                redirected = true;
                response.sendRedirect("dashboard.jsp");
            }
        }
        if(!redirected){
            request.setAttribute("Exception","Invalid Username or Password");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
            requestDispatcher.forward(request,response);
        }
    }
}
