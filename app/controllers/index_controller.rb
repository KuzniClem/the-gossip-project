class IndexController < ApplicationController
  def home
  	@author_name_with_title_and_id_hashs = Gossip.all.map do |e|
  		{author: e.user.first_name, title: e.title, gossip_id: e.id}
  	end
  end

  def welcome
  	@first_name = params['first_name']
  end
end
