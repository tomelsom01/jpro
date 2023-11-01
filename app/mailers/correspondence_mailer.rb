class CorrespondenceMailer < ApplicationMailer
  def send_email(correspondence)
    @correspondence = correspondence

    mail(to: 'te28@hotmail.com', subject: 'New Correspondence Inquiry')
  end
end
