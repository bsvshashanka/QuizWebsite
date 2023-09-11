package com.quizwebsite.quizwebsite.Questions;

import java.util.List;

public class Question {
    private String questionText;
    private List<String> options;

    public int getQuizIndex() {
        return quizIndex;
    }

    public void setQuizIndex(int quizIndex) {
        this.quizIndex = quizIndex;
    }

    private int quizIndex;

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }

    public List<String> getOptions() {
        return options;
    }

    public void setOptions(List<String> options) {
        this.options = options;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    private String answer;


}