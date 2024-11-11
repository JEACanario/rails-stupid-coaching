class QuestionsController < ApplicationController
  def ask
  end

  def answer
    #raise
    if(params[:question] != nil)
      question = params[:question]
      #test = question.include?('?')
      #raise
      if question == "I am going to work"
        @answer = "Great!"
      elsif question.ends_with?("?")
        @answer = "Silly question, get dressed and go to work!."
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
