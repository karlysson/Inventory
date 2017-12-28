Rails.application.routes.draw do



  #devise_for :users, :skip => [:registrations]
  devise_for :users

  root 'site/home#index'
  ########################
  # SITE
  ########################
  namespace :site do
  	root 'home#index'
  end
  ########################
  # ADMIN
  ########################
  namespace :admin do
    root 'home#index'
    resources :companies
    resources :providers
    resources :products
    resources :diagrams, only: [:index]
  	resources :users

  end


end
