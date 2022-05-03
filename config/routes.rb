Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :users, only: :show
  resources :event_attendances, only: %i[new create]
  # get "/users/:id", to: "users#show", as: show_user_path
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
