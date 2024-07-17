Rails.application.routes.draw do
  get 'tweets/index'
  root to: "tweets#index"
  resources :tweets
end
