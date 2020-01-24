Rails.application.routes.draw do
  get 'homes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get :homes, to: "homes#index"

  root to: "homes#index"
end
