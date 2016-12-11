Rails.application.routes.draw do
  root :to => "sessions#login"
  get "signup", :to => "users#new"
  get "login", :to => "sessions#login"
  post "login_attempt", :to => "sessions#login_attempt"
  get "logout", :to => "sessions#logout"
  get "home", :to => "sessions#home"
  get "profile", :to => "sessions#profile"
  get "setting", :to => "sessions#setting"

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
