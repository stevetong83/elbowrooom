class Notifier < ActionMailer::Base

  def contact_me message
    @name = message.name
    @email = message.email
    @body = message.body

    mail(to: 'steve@elbowroomstudios.com', from: @email, subject: 'Elbowroom Studios Inquiry')
  end
end
