class CorrespondenceMailer < ApplicationMailer
  def send_email(correspondence)
    @correspondence = correspondence

    mail(to: 'te28@hotmail.com', subject: 'New Correspondence Inquiry')
    # this will render a view in `app/views/correspondence_mailer`!
  end
end
