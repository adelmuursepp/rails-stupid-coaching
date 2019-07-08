require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    take_screenshot
    fill_in "question", with: "Can I go to kung fu?"
    take_screenshot
    click_on "Ask"
    take_screenshot

    assert_text "I don't care, get dressed and go to work!"
  end
end
