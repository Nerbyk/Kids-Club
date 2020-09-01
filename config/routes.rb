Rails.application.routes.draw do
  root 'static_pages#home'
  get '/contacts', to: 'static_pages#contacts'
  get '/request', to: 'requests#new'
  get '/mother_and_baby', to: "courses#course1"
  get '/comprehensive_development', to: "courses#course2"
  get '/english_for_little_ones', to: "courses#course3"
  get '/english_for_schoolchildren', to: "courses#course4"
  get '/fine_arts_and_modeling', to: "courses#course5"
  get '/individual_speech_therapist', to: "courses#course6"
  get '/preparing_for_school', to: "courses#course7"
  get '/camp_on_holidays', to: "courses#course8"
  get '/mental_arithmetic', to: "courses#course9"
  get "/sitemap.xml", to: "sitemap#show", format: "xml", as: :sitemap
  resources :requests
end
