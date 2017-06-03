Rails.application.routes.draw do
  devise_for :users
  resources :restaurants, only: [ :index, :show ]
  root to: 'pages#home'
end
