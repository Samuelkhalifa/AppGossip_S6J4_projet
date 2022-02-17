class UserController < ApplicationController
    
    def user_entry_page 
        @first_name = params[:id]     
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(
            'first_name' => params[:first_name], 
            'last_name' => params[:last_name],
            'email' => params[:email],
            'age' => params[:age],
            'city_id' => params[:city],
            'description' => params[:description],
            'password' => params[:password_digest]
            )
        if @user.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def index
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
    end

    def udpdate
    end

    def destroy
    end

end
