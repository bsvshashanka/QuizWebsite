<%@include file="header.jsp"%>
Add Questions to <%=request.getAttribute("quizname").toString()%>
Quiz Number : <%=request.getAttribute("lastIndex").toString()%>
<html>
<head>
    <title>Add Questions and Submit</title>
</head>
<body>
<div>
    <h1>Add Questions</h1>
    <!-- Input fields for adding questions -->
    <label for="questionText">Question:</label>
    <input type="text" id="questionText" placeholder="Enter your question"><br>
    <label for="option1">Option 1:</label>
    <input type="text" id="option1" placeholder="Option 1"><br>
    <label for="option2">Option 2:</label>
    <input type="text" id="option2" placeholder="Option 2"><br>
    <label for="option3">Option 3:</label>
    <input type="text" id="option3" placeholder="Option 3"><br>
    <label for="option4">Option 4:</label>
    <input type="text" id="option4" placeholder="Option 4"><br>
    <label for="answer">Answer:</label>
    <input type="text" id="answer" placeholder="Correct answer"><br>
    <button onclick="addQuestion()">Add Question</button>
</div>

<div id="questionsContainer">
    <!-- Questions will be displayed here -->
</div>

<!-- Final submit button -->
<button id="finalSubmitButton">Submit All Questions</button>

<script>
    const questions = [];

    // Function to add a question
    function addQuestion() {
        // Get the user's input
        const questionText = document.getElementById("questionText").value;
        const option1 = document.getElementById("option1").value;
        const option2 = document.getElementById("option2").value;
        const option3 = document.getElementById("option3").value;
        const option4 = document.getElementById("option4").value;
        const answer = document.getElementById("answer").value;
        let quizIndex = -1
        quizIndex= <%=Integer.parseInt(request.getAttribute("lastIndex").toString())%>

        // Validate input fields
        if (questionText === "" || option1 === "" || option2 === "" || option3 === "" || option4 === "" || answer === "") {
            alert("Please fill in all fields before adding a question.");
            return; // Prevent adding a question with blank fields
        }

        // Create a question object
        const question = {
            questionText,
            options: [option1, option2, option3, option4],
            answer,
            quizIndex
        };

        // Add the question to the questions array
        questions.push(question);

        // Create a new question element (optional)
        const newQuestion = document.createElement("div");
        newQuestion.textContent = "Question: " + questionText;

        // Append the question element to the questionsContainer (optional)
        const questionsContainer = document.getElementById("questionsContainer");
        questionsContainer.appendChild(newQuestion);

        // Clear the input fields
        document.getElementById("questionText").value = "";
        document.getElementById("option1").value = "";
        document.getElementById("option2").value = "";
        document.getElementById("option3").value = "";
        document.getElementById("option4").value = "";
        document.getElementById("answer").value = "";
    }

    // Function to submit all questions to a servlet
    function submitQuestions() {
        // Perform an HTTP request to send the questions to the servlet
        const xhr = new XMLHttpRequest();
        const url = "addQuestionToQuizServlet"; // Replace with your servlet URL
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        xhr.send(JSON.stringify(questions));

        // Handle the response from the servlet if needed
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    alert("Questions submitted successfully!");
                    window.location.href = "myQuizzes.jsp";
                } else {
                    alert("Error: " + xhr.statusText);
                }
            }
        };
    }

    // Attach an event listener to the final submit button
    const finalSubmitButton = document.getElementById("finalSubmitButton");
    finalSubmitButton.addEventListener("click", submitQuestions);
</script>
</body>
</html>



