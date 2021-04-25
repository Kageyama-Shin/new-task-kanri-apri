Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  get    'posts/new', to: 'posts#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get    'posts/:id', to: 'post#show', as: :post
  
  resources :users do
    resources :tasks 
  end
end
