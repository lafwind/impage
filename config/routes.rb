Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  resources :posts do
    member do
      get "like", to: "posts#like"
      get "dislike", to: "posts#dislike"
    end
    resources :comments
  end

  get "display", to: "static_pages#display"

  authenticated :user do
    root 'static_pages#display', as: 'authenticated_root'
  end

  root "static_pages#welcome"
end
