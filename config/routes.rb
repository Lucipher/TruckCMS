Rails3BootstrapDeviseCancan::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index, :approve_user]
=begin  devise_scope :users do
    post "approve", :to => "users/approve_user"
=end
  # match '/users/approve_user', :controller => 'users', :action => 'approve_user', :collection => { :my_action => :put}
end
