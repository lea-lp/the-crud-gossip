class GossipsController < ApplicationController

    def index
      @all_gossips = Gossip.all
      @user = User.find(params[:user_id])

    end

    def new
      @new_gossip = Gossip.new
      @user = User.find(params[:user_id])

      
    end

    def create
      @user = User.find(params[:user_id])
      @new_gossip = Gossip.create(title: params[:gossip][:title], content: params[:gossip][:content], user_id: params[:user_id])

      redirect_to(user_gossip_path(@user.id, @new_gossip.id))
    end

    def show
      p "................................S H O W ........................................"
      @gossip = Gossip.find(params[:id])
      p "ID GOSSIP >>>>>>>>>>>> #{@gossip.id}"
      @comments = @gossip.comments
      p "COMMENT >>>>>>>>>>>> #{@comments}"
      @user = User.find(params[:user_id])
      p "ID USER >>>>>>>>>>>> #{@user.id}"
      p ".................................S H O W........................................"

    end

    def edit
      p ".................................E D I T........................................"
      p @user = User.find(params[:user_id])
      p @gossip = Gossip.find(params[:id])
      # p @gossip_id = Gossip.find(params[:id])
      p "..................................E D I T......................................."

    end

    def update
      @gossip = Gossip.find(params[:id])
      gossip_params = params.require(:gossip).permit(:title, :content)
      @gossip.update(gossip_params)
      redirect_to user_gossips_path
    end

    def destroy
      @user = User.find(params[:user_id])
      @gossip = Gossip.find(params[:id])
      @gossip.destroy
      redirect_to user_gossips_path
    end


  end
