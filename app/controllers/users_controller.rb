class UsersController < ApplicationController
  def show
  	@cur_user = User.find(params[:id])
  end

  def new
		@user = User.new
  end

  def create
  	@user = User.new
  	@user.city = City.all.sample
  	@user.first_name = params[:first_name]
  	@user.last_name = params[:last_name]
  	@user.age = params[:age]
  	@user.email = params[:email]
  	@user.description = params[:description]
  	@user.password = params[:password]
  	@user.password_confirmation = params[:password_confirmation]
    if @user.save
      log_in(@user)
      redirect_to user_welcome_index_path(@user.id)
    else
      render 'new'
    end
  end
end
