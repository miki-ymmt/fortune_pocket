Rails.application.routes.draw do
  root 'static_pages#top'
  get 'top', to: 'static_pages#top'
  get 'omikuji', to: 'omikuji#show'
  get 'omikuji/show_result/:id', to: 'omikuji#show_result', as: 'omikuji_show_result'
  # resource :omikuji, only: %i[show]
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#shraow", as: :rails_health_check

  # Defines the root path route ("/")
  # root "tasks#index"
end
