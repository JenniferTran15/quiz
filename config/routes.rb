Rails.application.routes.draw do
  devise_for :users
  root 'content#index'
  resources :content do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  resources :users, only: :show
end
