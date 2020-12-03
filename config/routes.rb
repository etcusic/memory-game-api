Rails.application.routes.draw do
  resources :decks do 
    resources :cards, only [:index, :show]
  end
end
