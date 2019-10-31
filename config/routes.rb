Rails.application.routes.draw do
  devise_for :users
  root 'content#index'
  resources :content do
    resources :comments, only: :create
  end
end
