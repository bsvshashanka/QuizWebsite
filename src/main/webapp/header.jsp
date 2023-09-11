<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quiz</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<style>
    .btn-right{
        margin: 4px;
    }
    .login-form{
        max-width: 25%;
        margin-top: 100px;
        margin-bottom: 100px;
        border: 2px black solid;
        padding: 20px;
    }
    .login-forms{
        display: flex;
        justify-content: center;
    }
    .login-forms div{
        margin: 30px;
    }
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="isAdmin">Create a Quiz</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="myQuizzesServlet">My Quizzes</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0 btn-right" type="submit" style="padding: 8px;">Search</button>
        </form>
        <div class="form-inline my-2 my-lg-0">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item btn-right">
                    <a class="nav-link btn btn-outline-success my-2 my-sm-0" href="login.jsp">Login</a>
                </li>
                <li class="nav-item btn-right">
                    <a class="nav-link btn btn-outline-success my-2 my-sm-0" href="signup.jsp">Signup</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</html>