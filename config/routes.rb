Rails.application.routes.draw do
  resources :connect_four_logs, only: [:index]
  resources :users, only: [:index, :connect_four_logs]
  resources :decks, only: [:index, :show] do 
    resources :cards, only: [:index, :show]
  end
  resources :game_logs, only: [:index, :create]  # need to specify which routes are actually used
end
