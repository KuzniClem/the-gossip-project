class GossipController < ApplicationController
  def show
  	@cur_gossip = Gossip.find(params[:gossip_id])
  end
end
