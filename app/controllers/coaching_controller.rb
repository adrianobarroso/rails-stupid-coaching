class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(params[:query])
  end

  def ask
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    expect_message = "I am going to work right now!"
    if expect_message != your_message
      case your_message.split("").last
      when ".", "!", ""
        return "I don't care, get dressed and go to work!"
      when "?"
        return "Silly question, get dressed and go to work!"
      else
        return "I can feel your motivation!"
      end
    else
      return ""
    end
  end
end
