Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles #gave us index,new,show,update,delete paths for articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
