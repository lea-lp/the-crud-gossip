Rails.application.routes.draw do

  resources :users
  resources :gossips do 
  	resources :comments 
	end 
  root to: 'static_pages#home'
end
