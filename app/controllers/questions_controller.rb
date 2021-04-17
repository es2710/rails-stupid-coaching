class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ()
    @question = params[:question]
    if params[:question].end_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work right now!'
      @answer = 'Great'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
