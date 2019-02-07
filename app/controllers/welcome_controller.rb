class WelcomeController < ApplicationController
  def index
  	@first_name = User.find(params[:user_id]).first_name
  end
end
