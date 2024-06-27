Rails.application.routes.draw do
  resources :courses
  root 'courses#index'
  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/edit'

  get '/search', to: 'courses#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
