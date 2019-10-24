Rails.application.routes.draw do
  
  resources :favorite_inspirations
  resources :inspirations
  resources :goals
  resources :journal_entries

  resources :meditation_sessions
  resources :users

  post '/login', to: 'login#create', as: 'login'

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
