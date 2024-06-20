Rails.application.routes.draw do
    
  constraints subdomain: 'play' do
    root 'play#index', as: :play_root
    get '/tournaments/:tournament_id', to: 'play#show', as: :play_tournament
    get '/contestants/new', to: 'play/contestants#new', as: :play_new_contestant
    post '/contestants', to: 'play/contestants#create', as: :play_contestant
    post '/tournament', to: 'play#enter', as: :play_enter
  end

  resources :rounds
  # resources :contestants
  resources :games
  resources :tournaments
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
    # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
    # Can be used by load balancers and uptime monitors to verify that the app is live.
    get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
  
end
