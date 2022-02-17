class IndexController < ApplicationController
   
    def home_page
        @gossips = Gossip.all 
        @users = User.all  
    end

    def team_page
    end

    def contact_page
    end

    def new
        @user = User.new
    end

end

