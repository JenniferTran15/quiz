Rails.application.routes.draw do
  devise_for :users
  get "/pages/:page" => "pages#show"
  root 'contents#index'
  resources :contents do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  resources :users, only: :show
end
