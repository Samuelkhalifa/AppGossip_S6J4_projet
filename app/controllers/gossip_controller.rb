class GossipController < ApplicationController

    def new
        @gossip = Gossip.new
    end
    
    def create
        @gossip = Gossip.new(
            'title' => params[:title], 
            'content'=> params[:content],
            'user_id' => User.all.sample.id
            )
        if @gossip.save
            redirect_to "/"
        end
    end

    def new_is_ok
    end

    def show
        @gossip = Gossip.find(params[:id])
        @comments = Comment.all  
    end

    def edit
        @gossip = Gossip.find(params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        if @gossip.update(
            'title' => params[:title],
            'content' => params[:content]
            )
            redirect_to @gossip
        else
            render :edit
        end
    end

    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to root_path
    end
    
end
