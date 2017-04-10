class SpeechController < ApplicationController
  def speak
    SayJob.perform_later(params[:phrase], params[:voice])
    render plain: "Spoke the word son."
  end
end
