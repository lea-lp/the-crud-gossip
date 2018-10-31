class GossipsController < ApplicationController

    def index
      @all_gossips = Gossip.all
    end

    def new
      @new_gossip = Gossip.new
    end

    def create
      new_gossip = Gossip.create(anonymous_gossiper: params[:gossip][:anonymous_gossiper], title: params[:gossip][:title], content: params[:gossip][:content])
      redirect_to(gossip_path(new_gossip.id))
    end

    def show
      @gossip = Gossip.find(params[:id])
      # @gossip = Gossip.find(params[:id])
    end

    def edit
      @gossip = Gossip.find(params[:id])
    end

    def update
      @gossip = Gossip.find(params[:id])
      gossip_params = params.require(:gossip).permit(:title, :content)
      @gossip.update(gossip_params)
      redirect_to gossips_path
    end

  end
