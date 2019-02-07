class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password_try])
      log_in(@user)
      redirect_to root_path
    else
      render 'new'
    end
	end

	def destroy
    session.destroy
    redirect_to root_path
	end
end
