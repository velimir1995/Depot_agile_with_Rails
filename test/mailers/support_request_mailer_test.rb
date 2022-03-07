require "test_helper"

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    mail = SupportRequestMailer.respond(support_requests(:one))
    assert_equal "Re: Respond", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["support@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
