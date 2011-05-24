Koffeeban::Application.routes.draw do

  resources :cards
  resources :lanes
  resources :templates do
    collection do
      get 'board'
      get 'lane'
    end
  end

  root :to => 'templates#index'

end
