Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"

  resources :books, only: [:new, :edit, :update, :create, :index, :show, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
