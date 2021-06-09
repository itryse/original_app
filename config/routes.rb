Rails.application.routes.draw do
  devise_for :users

  root to: 'posts#index'
  get 'posts/search'

  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end
