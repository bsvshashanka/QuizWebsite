<%@include file="header.jsp"%>
<form action="createQuizServlet" method="post">
    your quizname : <label>
    <input name="quizname">
</label>
</form>
<%=session.getAttribute("typeOfUser")%>:<%=session.getAttribute("username")%>