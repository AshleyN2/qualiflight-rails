Rails.application.routes.draw do
# Defines the root path route ("/")
# root "articles#index"
 root 'pages#index'

 namespace :api do
  namespace :vi do
    resources :airlines, param: :slug
    resources :reviews, only: [:create, :destroy]
    end
  end

  get '#path', to: 'path#index'  #, via :all

end
