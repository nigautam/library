class WelcomeMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.email.subject
  #
  def email(email,subject)
    

    mail to: email,subject: subject
  end
end
