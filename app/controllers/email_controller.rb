class EmailController < ApplicationController

  def index
    @email = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new
    @email.name = params[:name]
    @email.email = params[:email]
    @email.message = params[:message]
    if @email.deliver
      render json: { message: "Email sent successfully" }
    else
      render json: @contact.errors
    end
  end
end
