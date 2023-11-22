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
      flash[:notice] = 'Form submitted successfully. We will be in touch soon!'
    else
      flash[:alert] = 'Form submission failed. Please fill in all required fields.'
    end
    redirect_to emailform_path
  end

  private

  def email_params
    params.require(:email).permit(:name, :email, :message)
  end

end
