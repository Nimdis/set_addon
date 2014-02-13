SetAddon::Application.routes.draw do
  resources :names
  resources :main
  root 'main#index'
end
