Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists do
    resources :events
  end
  resources :categories
  get '/events', to: 'events#todos'
  get '/events/:category', to: 'events#category'
end
