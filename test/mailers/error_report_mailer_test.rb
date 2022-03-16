require "test_helper"

class ErrorReportMailerTest < ActionMailer::TestCase
  test "send_report" do
    mail = ErrorReportMailer.send_report("a random Error occurred.")
    assert_equal "An error occurred", mail.subject
    assert_equal ["vgvozdenac.vg@gmail.com"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "I'm sorry to inform you that the following error occurred: a random Error occurred.", mail.body.encoded
  end

end
