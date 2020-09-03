Rails.application.routes.draw do

  root :to => 'teas#homepage'


  resources :reviews

  resources :teas do
    resources :reviews, only: [:new, :index]
  end

  resources :brands

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
