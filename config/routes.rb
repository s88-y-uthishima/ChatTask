Rails.application.routes.draw do
  devise_for :users
  root 'rooms#index'

  resources :rooms, only: [:new, :create, :show] do
    resources :tasks, only: [:new, :create, :destroy, :edit, :update]
  end
end
