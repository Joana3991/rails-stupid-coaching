class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_question = params[:user_answer]
    @coach_reply = if @user_question.capitalize == 'I am going to work'
                     'Great!'
                   elsif @user_question.include?('?')
                     'Silly question, get dressed and go to work!'
                   else
                     "I don't care, get dressed and go to work!"
                   end
  end
end
