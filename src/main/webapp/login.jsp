<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Quiz-Login</title>
    <%@include file="header.jsp"%>
</head>
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

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
</html>