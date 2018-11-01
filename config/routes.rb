Rails.application.routes.draw do

  resources :gossips do 
  	resources :comments 
	end 
  root to: 'static_pages#home'
end
