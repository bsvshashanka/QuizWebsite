<title>Quiz-Signup</title>
<%@include file="header.jsp"%>
<body>
<script>
    let x= document.getElementsByClassName("Exception");
    if(x.length===1){
        alert(x[0].innerHTML);
    }
</script>
<div class="container login-forms">
    <div class="login-form">
        <form action="signupStudent" method="post">
            <h3>Student</h3>
            <div class="form-group">
                <label for="username_student">Username</label>
                <input name="username" type="text" class="form-control" id="username_student" aria-describedby="emailHelp" placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="name_student">Name</label>
                <input name="username" type="text" class="form-control" id="name_student" aria-describedby="emailHelp" placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="email_student">email</label>
                <input name="email" type="email" class="form-control" id="email_student" aria-describedby="emailHelp" placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="password_user">Password</label>
                <input name="password" type="password" class="form-control" id="password_user" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <div class="login-form">
        <form action="signupAdmin" method="post">
            <h3>Admin</h3>
            <div class="form-group">
                <label for="username_student">Username</label>
                <input name="username" type="text" class="form-control" id="username_admin" aria-describedby="emailHelp" placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="name_admin">Name</label>
                <input name="username" type="text" class="form-control" id="name_admin" aria-describedby="emailHelp" placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="email_admin">email</label>
                <input name="email" type="email" class="form-control" id="email_admin" aria-describedby="emailHelp" placeholder="Enter username">
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