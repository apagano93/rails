class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def create
  @user = User.new(params[:user])
 
  	if @user.save
    	redirect_to @user, notice: "Thank you for signing up for Ribbit!"
  	else
    	render 'new'
  	end
  end

end
