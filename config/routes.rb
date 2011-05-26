Koffeeban::Application.routes.draw do

  resources :cards
  resources :lanes
  resources :templates do
    collection do
      get 'application'
      get 'lane'
      get 'new_card'
    end
  end

  root :to => 'templates#index'

end
