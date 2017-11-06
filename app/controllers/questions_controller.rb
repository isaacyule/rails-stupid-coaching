class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @reply = ""

    if @question == "I am going to work"
      @reply = "Great!"
    elsif @question.end_with?("?")
      @reply = "Silly question, go to work!"
    else
      @reply = "I don't care, go to work!"
    end
  end
end
