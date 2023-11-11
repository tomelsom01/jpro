class CorrespondenceController < ApplicationController
  def index
    @correspondence = Correspondence.new
  end

  def create
    @correspondence = Correspondence.new(correspondence_params)
    if @correspondence.save
      # Send an email using a mailer, passing the @correspondence object
      CorrespondenceMailer.send_email(@correspondence).deliver_now

      flash[:notice] = 'Form submitted successfully. We will be in touch soon!'
      redirect_to contactform_path
    else
      flash[:alert] = 'Form submission failed. Please fill in all required fields.'
      render :index
    end
  end

  private

  def correspondence_params
    params.require(:correspondence).permit(:name, :email, :streetaddress, :city, :postcode)
  end
end

class Correspondence < ApplicationRecord
  validates :name, :email, :streetaddress, :city, :postcode, presence: true
end
