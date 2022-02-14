class QuestionsController < ApplicationController
  def ask
  end

  def answers
    @member = params[:member]
    @answer = coach_answer(@member)
  end

  private

  def coach_answer(your_message)
    if your_message == 'hello coach!'
      'shut up!'
    elsif your_message.ends_with?('?')
      'Stop asking questions loser'
    else
      'Buzz off!'
    end
  end
end
