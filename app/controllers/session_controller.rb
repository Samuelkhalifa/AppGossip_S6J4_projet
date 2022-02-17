class SessionController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to session_path(id: session[:user_id])
        else
            render 'new'
        end
    end

    def show
        @user = User.find(params[:id])

    end

    def destroy
        session.delete(:user_id)
        redirect_to gossips_path
    end
end
