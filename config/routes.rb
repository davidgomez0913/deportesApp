Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "home#index"
  resources :sports
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/events/:id/add_users/:user_id', to: "events_users#create", as: 'add_user'
end
