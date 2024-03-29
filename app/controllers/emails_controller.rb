class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)

    if @email.deliver
      flash[:notice] = 'Thank you! Your message has been sent successfully.'
    else
      flash[:alert] = 'Oops! Something went wrong. Please check the form and try again.'
    end
    redirect_to emailform_path
  end

  private

  def email_params
    params.require(:email).permit(:name, :email, :message)
  end

  def build_email(params)
    email = Email.new(params)
    email.reply_to = params[:email] # Set the reply_to attribute to the original sender's email address
    email
  end
end
