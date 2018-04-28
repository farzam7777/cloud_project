Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  
  root 'pages#index'
  resources :rooms do
  	member do
  		post 'book_room'
  	end
    member do
      get 'rating'
    end
  	resources :reviews
  end
end
