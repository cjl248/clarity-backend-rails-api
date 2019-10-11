Rails.application.routes.draw do
  resources :favorite_inspirations
  resources :inspirations
  resources :goals
  resources :meditation_sessions
  resources :journal_entries
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
