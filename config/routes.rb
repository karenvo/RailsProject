Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  resources :users, only: [:new, :create]
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'sessions#welcome'
    resources 'appointment'
    get 'authorized', to: 'sessions#page_requires_login'
end
