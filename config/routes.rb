Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get :homes, to: "homes#index"

  resources :photos,  constraints: -> (req) { req.xhr? || req.format.json? }, only: [:create]
  resources :users

  resources :user_sessions, only: [:create]
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  root to: "homes#index"
end
