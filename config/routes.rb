Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'welcome/index'
    resources 'appointment'
    root 'welcome#index'
end
