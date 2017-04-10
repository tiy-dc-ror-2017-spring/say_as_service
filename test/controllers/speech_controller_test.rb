require 'test_helper'

class SpeechControllerTest < ActionDispatch::IntegrationTest
  test "should get speak" do
    get speech_speak_url
    assert_response :success
  end

end
