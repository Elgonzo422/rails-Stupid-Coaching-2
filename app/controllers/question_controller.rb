class QuestionController < ApplicationController
  def ask
  end

  def answer
     @question = params[:question_for_coach]
      if @question == "I am going to work"
        @answer = "Great!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
      @question.split(" ")
      if @question.last.include? "?"
        @answer = "Silly question, get dressed and go to work!"
      end
  end

end
