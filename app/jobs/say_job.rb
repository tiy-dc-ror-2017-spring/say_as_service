class SayJob < ApplicationJob
  queue_as :default

  def perform(phrase, voice)
    voice = Shellwords.escape((voice || "Samantha"))
    phrase = Shellwords.escape phrase
    system(p "say -v #{voice} #{phrase}")
  end
end
