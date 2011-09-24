class SessionsController < ApplicationController
  def new

  end

   def create
    if user = User.authenticate(params[:session][:name], params[:session][:password])
      redirect_to galleries_url
    else
      flash.now[:error] = "Invalid email/password combination."
      render 'new'
    end
   end


  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged Out"
  end

end
