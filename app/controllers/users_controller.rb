class UsersController < ApplicationController
  def show
  	@cur_user = User.find(params[:id])
  end
end
