Rails.application.routes.draw do
  resources :game_logs  # need to specify which routes are actually used
  resources :decks do 
    resources :cards, only: [:index, :show]
  end
end
