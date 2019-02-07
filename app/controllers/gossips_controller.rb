class GossipsController < ApplicationController
  before_action :authenticate_user, except: [:index]
  before_action :is_same_user, only: [:edit, :update, :destroy]

  def index
  	@author_name_with_title_and_id_hashs = Gossip.all.map do |e|
  		{author: e.user.first_name, title: e.title, gossip_id: e.id}
  	end
  end

  def show
  	@gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new
    @gossip.user = current_user
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    if @gossip.save
      redirect_to gossips_path
    else
      render 'new'
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(:title => params[:title], :content => params[:content])
      redirect_to gossip_url(params[:id])
    else
      render :edit
    end
  end

  def destroy
    Gossip.delete(Gossip.find(params[:id]))
    redirect_to gossips_path
  end

  private

  def authenticate_user
    unless current_user
      redirect_to new_session_path
    end
  end

  def is_same_user
    unless current_user == Gossip.find(params[:id]).user
      redirect_to gossip_path(params[:id])
    end
  end
end
