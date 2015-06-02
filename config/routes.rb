Rails.application.routes.draw do
  get 'static_pages/display'

  devise_for :users
  resources :posts do
    member do
      get "like", to: "posts#like"
      get "dislike", to: "posts#dislike"
    end
    resources :comments
  end

  get "display", to: "static_pages#display"
  get "like_list", to: "static_pages#like_list"

  root "posts#index"
end
