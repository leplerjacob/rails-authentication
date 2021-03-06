Rails.application.routes.draw do

  resources :registrations, only: [:create]
  root to: "static#home"
  resources :sessions, :only => [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
end
