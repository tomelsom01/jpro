class FriendsfamilyController < ApplicationController
  def index
    @credits = Credit.all # Retrieve the credits from the database or any other data source

    puts @credits.inspect # Display @credits in the console

    respond_to do |format|
      format.html # Renders 'friendsfamily/index.html.erb' by default
      format.json { render json: @credits }
    end
  end


  def insert_credits
    names = ['John Doe', 'Jane Smith', 'Alice Johnson', 'Liam', 'noah', 'oliver', 'james', 'elijah', 'william', 'henry', 'lucas'] # Add your desired names here

    names.each do |name|
      Credit.create(name: name)
    end

    redirect_to action: :index and return
  end
end
