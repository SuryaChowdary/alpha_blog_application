Rails.application.routes.draw do
  root 'pages#home'
  get 'about',to: 'pages#about'
  get 'signup' , to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users , except: [:new]
  #resources :articles , only: [:show , :index , :new, :create ,:edit , :update , :destroy]
  resources :articles
  resources :categories , except: [:destroy]
end
