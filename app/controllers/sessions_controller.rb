class SessionsController < ApplicationController

  def new
    #to create a log in, there is no need to instantiate a new session by creating a new instance
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to pictures_url, notice: "Logged in!"
    else
      flash[:notice] = 'try again'
      render :new
    end
  end


  def destroy
    sessions[:user_id] = nil
    redirect_to pictures_url, notice: "Logged out!"
  end
end

# we find a user by the email typed in the email input field and assign it to the variable 'user'

# if both true then we creat  key value pair user id is the key and the user's id is the value
