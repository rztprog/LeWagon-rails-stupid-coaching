class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    @answer = nil
    questions =  ["I am going to work", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if @question === questions[0]
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = questions[1]
    else
      @answer = questions[2]
    end
  end
end
