Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "report/index"

  get "report/show"

  resources :services

  resources :contacts_repaiers

  resources :repairers

  resources :fleets

  resources :contact_truck_fleets

  resources :truck_fleets

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
