class CommentController < ApplicationController

    def new
    end

    def create
        @comment = Comment.new(
            'content' => params[:content],
            'gossip_id' => Gossip.where(id: params[:id])
            )
        @comment.save
        redirect_to root_path
    end

    def show
    end
end
