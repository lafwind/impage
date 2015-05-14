Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    member do
      get "like", to: "posts#like"
      get "dislike", to: "posts#dislike"
    end
  end

  root "posts#index"
end
