class QuestionsController < ApplicationController
  def ask
  end

  def answer
    search_query = params[:question]
    if search_query == "I am going to work"
      @answer = "Great!"
    elsif search_query.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care go back to work!"
    end
end
end
