class CommentController < ApplicationController

    def new
        #@gossip = Gossip.find(params[:gossip_id])
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(
            'content' => params[:content],
            'gossip_id' => params[:gossip_id]
            )
        if @comment.save 
            redirect_to gossip_path(@gossip.id)
        end
    end

    def show
    end
end
