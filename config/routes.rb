Rails.application.routes.draw do
  resources 'sessions'
  resources :users, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'sessions#welcome'
    resources 'appointment'
    get 'authorized', to: 'sessions#page_requires_login'
end
