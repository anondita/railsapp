Rails.application.routes.draw do
<<<<<<< HEAD
  root 'welcome#index'
get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
=======
  get 'sessions/new'
  get 'users/new'
  get 'welcome/index'

resources :articles do
  resources :comments
end
 root 'welcome#index'
  get  '/signup',  to: 'users#new'
post '/signup',  to: 'users#create'
>>>>>>> basic-login
get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
resources :users
end
