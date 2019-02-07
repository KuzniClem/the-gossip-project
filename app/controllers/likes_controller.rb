class LikesController < ApplicationController
  def create
  	like = Like.new
  	like.user = current_user
  	like.gossip = Gossip.find(params[:gossip_id])
  	like.save
  	redirect_to gossips_path
  end

  def destroy
  	Like.destroy(Like.find(params[:id]))
  	redirect_to gossips_path
  end
end
