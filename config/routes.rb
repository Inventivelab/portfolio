Rails.application.routes.draw do
  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'javascript', to: 'portfolios#javascript'
  get 'rubyonrails', to: 'portfolios#rubyonrails'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

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

#   #globbing
# get 'posts/*missing', to: 'posts#missing'

# #   # custom route
# # get 'query/:else', to: 'pages#something'
#  controller file
# def something
#    @else = mparams[:else]
# end
