class WelcomeController < ApplicationController
  def index
  	@first_name = User.found(params['users_id']).first_name
  end
end
