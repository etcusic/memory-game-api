Rails.application.routes.draw do
  resources :users
  resources :decks do 
    resources :cards, only: [:index, :show]
  end
  resources :game_logs  # need to specify which routes are actually used
end
