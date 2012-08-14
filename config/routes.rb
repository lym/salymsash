Blog::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'articles#index'
  resources :articles do
    member do
	    post :notify_friend
	  end
	resources :comments
  end

  resources :users
  resource :session

  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"
end
