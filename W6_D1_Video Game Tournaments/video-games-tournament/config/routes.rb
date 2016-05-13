Rails.application.routes.draw do
  get '/' => 'tournaments#index'
  namespace :api do
    resources :tournaments do
      resources :players
      post '/players/add_player' => 'players#add_player'
    end
  end 
end
