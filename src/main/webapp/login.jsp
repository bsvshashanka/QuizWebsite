<title>Quiz-Login</title>
<%@include file="header.jsp"%>
<%
    if(request.getAttribute("Exception")!=null){
            %>
<div class="exception" hidden><%=request.getAttribute("Exception")%></div>
<%
        }
        if(request.getAttribute("message")!=null){
            %>
<div class="message" hidden><%=request.getAttribute("message")%></div>
<%

    }
%>
<body>
<script>
    let x= document.getElementsByClassName("Exception");
    if(x.length>=1){
        alert(x[0].innerHTML);
    }
    let y = document.getElementsByClassName("message");
    if(y.length>=1){
        alert(y[0].innerHTML);
    }
</script>
<div class="container login-forms">
    <div class="login-form">
    <form action="loginValidateStudent" method="post">
        <h3>Student</h3>
        <div class="form-group">
            <label for="username_student">Email address</label>
            <input name="username" type="text" class="form-control" id="username_student" aria-describedby="emailHelp" placeholder="Enter username">
        </div>
        <div class="form-group">
            <label for="password_user">Password</label>
            <input name="password" type="password" class="form-control" id="password_user" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </div>
    <div class="login-form">
    <form action="loginValidateAdmin" method="post">
        <h3>Admin</h3>
    <div class="form-group">
        <label for="username_admin">username address</label>
        <input name="username" type="text" class="form-control" id="username_admin" aria-describedby="emailHelp" placeholder="Enter username">
    </div>
    <div class="form-group">
        <label for="password_admin">Password</label>
        <input name="password" type="password" class="form-control" id="password_admin" placeholder="Password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
    </div>
</div>
</body>