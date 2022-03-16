class ErrorReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.error_report_mailer.send_report.subject
  #
  def send_report(error_message)
    @error_message = error_message
    mail to: "vgvozdenac.vg@gmail.com", subject: "An error occurred"
  end
end
