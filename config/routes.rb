Rails.application.routes.draw do
  devise_for :users
  root 'rooms#index'

  resources :users, only: :show
  resources :rooms, only: [:new, :create, :show] do
    resources :tasks, only: [:new, :create, :destroy, :edit, :update] do
      resources :cards, except: :index 
    end
  end
end
