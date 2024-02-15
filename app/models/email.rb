class Email < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :file, attachment: true

  attribute :message
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Contact Form Inquiry",
      to: "john.e.elsom@gmail.com",
      from: %("#{name}" <#{email}>),
      reply_to: %(<#{email}>)
    }
  end
end
