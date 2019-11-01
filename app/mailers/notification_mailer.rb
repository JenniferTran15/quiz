class NotificationMailer < ApplicationMailer
  default from: "no-reply@quizapp.com"

  def comment_added(comment)
    @content = comment.content
    @content_owner = @content.user
    mail(to: "@content_owner.email",
      subject: "A comment has been added to your #{{@content.name}")
  end
end
