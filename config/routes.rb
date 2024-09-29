Palooza02::Engine.routes.draw do
  resources :paloozas
  root to: 'paloozas#index'
end
