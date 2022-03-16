# Preview all emails at http://localhost:3000/rails/mailers/error_report_mailer
class ErrorReportMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/error_report_mailer/send_report
  def send_report
    ErrorReportMailer.send_report
  end

end
