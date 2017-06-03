Rails.application.routes.draw do
  devise_for :users
  resources :restaurants, only: [ :index, :show ]
    resources :reviews, only: :create

  root to: 'pages#home'
end
