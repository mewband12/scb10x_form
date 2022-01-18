Rails.application.routes.draw do
  get 'participates/create'
  # get 'parties/index'
  get 'parties/new'
  get 'parties/create'
  # get 'parties/show'
  devise_for :users
  root to: 'pages#home'

  resources :parties, only: [:new, :create]
  resources :participates, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
