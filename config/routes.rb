Rails.application.routes.draw do
  get 'comment/new'
  get 'comment/create'
  get 'likes/create'
  # get 'posts/index'
  # get 'posts/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'users#index'
  resources :users, only: [:index, :show] do
  resources :posts, only: [:index, :show]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
