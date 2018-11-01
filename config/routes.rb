Rails.application.routes.draw do

  post 'registration/new'
	# get '/gossips', to: 'gossips#index'
	get '/', to: 'users#index'

  resources :users do 

  	resources :gossips do 
  		resources :comments 
	end 
end 
  root to: 'static_pages#home'
end
