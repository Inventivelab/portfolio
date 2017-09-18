Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# get 'myabout/login/page', to: 'pages#about', as: 'about'
# namespace :admin do
#   get 'dashboard/main'
#   get 'dashboard/user'
#   get 'dashboard/login'
# end
# get 'posts/*missing', to: 'posts#missing'
