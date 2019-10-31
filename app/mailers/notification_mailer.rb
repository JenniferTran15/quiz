class NotificationMailer < ApplicationMailer
  default from: "no-reply@quizapp.com"

  def comment_added
    mail(to: "jennifertran135@gmail.com",
      subject: "A comment has been added to your place")
  end
end
