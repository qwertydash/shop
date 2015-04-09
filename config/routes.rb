Rails.application.routes.draw do 


  devise_for :admins, :skip => :registrations
  get 'pages/home'

  devise_scope :admin do
  get "/admin" => "devise/sessions#new"
  end
  
  resources :items
  resources :categories do
  	resources :items
  end

  root 'pages#home'


end
