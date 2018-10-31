Rails.application.routes.draw do

  resources :gossips
  root to: 'static_pages#home'
end
