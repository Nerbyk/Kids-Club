Rails.application.routes.draw do
  root 'static_pages#home'
  get '/contacts', to: 'static_pages#contacts'
  get '/request', to: 'requests#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
