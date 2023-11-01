class ContactformController < ApplicationController
  def index
    @correspondence = Correspondence.new
  end
  def contact
    if request.post?
      @correspondence = Correspondence.new(correspondence_params)
      if @correspondence.save
        # Send an email using a mailer
        CorrespondenceMailer.send_email(@correspondence).deliver_now

        flash[:notice] = 'Form submitted successfully.'
      else
        flash[:alert] = 'Form submission failed.'
      end
      redirect_to about_path
    end
  end

  private

  def correspondence_params
    params.require(:correspondence).permit(:name, :email, :street, :city, :postcode)
  end
end
