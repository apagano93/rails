class UsersController < ApplicationController
	def new
    @user = User.new
end

def user_params 
params.require(:user).permit(:username, :name, :email, :password ,:password_confirmation ,:avatar_url)
end

def create
  @user = User.new(params[:user_params])
  

  if @user.save
    redirect_to @user, notice: "Thank you for signing up for RedBeat!"
  else
    render 'new'
  end
end

def show
  @user = User.find(params[:id])
   @ribbit = Ribbit.new
end
   
end
