Rails.application.routes.draw do

  root to: 'index#home_page'

    #Controller_Index
  get '/', to: 'index#home_page'
  get '/register', to: 'user#new'
  get '/sign_in', to: 'index#sign_in_page'
  post '/register', to: 'index#home_page'
  get '/team', to: 'index#team_page'
  get '/contact', to: 'index#contact_page'


    #Controller_User
  #get '/user/:id', to: 'user#user_entry_page'
  #get '/user/:id', to: 'user#show'
  resources :user


    #Controller_Gossip
  resources :gossip do
    resources :comment
  end

  
    #Controller_City
  resources :city
    

    #Controller_Comment
  resources :comment

    #Controller_Session
  resources :session

end
