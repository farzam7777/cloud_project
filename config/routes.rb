Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  
  root 'pages#index'
  resources :rooms do
  	member do
  		post 'book_room'
  	end
  	resources :reviews
  end
end
