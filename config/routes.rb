Rails.application.routes.draw do
  # resources :connect_four_logs, only: [:index]
  resources :users, only: [:index]

  resources :users, only: [:index, :show] do 
    resources :connect_four_logs, only: [:index]
  end

  resources :decks, only: [:index, :show] do 
    resources :cards, only: [:index, :show]
  end
  
  resources :game_logs, only: [:index, :create]  # need to specify which routes are actually used
end
