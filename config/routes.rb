Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show

  resources :events

  resources :event_attendances, only: %i[new create]

  root "events#index"
end
