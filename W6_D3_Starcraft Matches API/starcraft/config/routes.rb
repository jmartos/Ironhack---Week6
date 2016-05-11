Rails.application.routes.draw do
  resources :players
  resources :matches
  get '/:faction/matches', to: 'matches#faction_matches'
end
