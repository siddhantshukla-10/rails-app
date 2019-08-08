Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  get 'signup', to: 'users#new'

  get 'login' , to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, except: [:new]

  resources :articles #gave us index,new,show,update,delete paths for articles

  resources :categories, except: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
