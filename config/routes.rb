Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home', to: 'pages#home'

  
  resources :recipes 
    
  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy', :as => :logout_path

end


# Prefix Verb   URI Pattern                                                                              Controller#Action
# root GET    /                                                                                        pages#home
# pages_home GET    /pages/home(.:format)                                                                    pages#home
# recipes GET    /recipes(.:format)                                                                       recipes#index
#      POST   /recipes(.:format)                                                                       recipes#create
# new_recipe GET    /recipes/new(.:format)                                                                   recipes#new
# edit_recipe GET    /recipes/:id/edit(.:format)                                                              recipes#edit
# recipe GET    /recipes/:id(.:format)                                                                   recipes#show
#      PATCH  /recipes/:id(.:format)                                                                   recipes#update
#      PUT    /recipes/:id(.:format)                                                                   recipes#update
#      DELETE /recipes/:id(.:format)                                                                   recipes#destroy
# signup GET    /signup(.:format)                                                                        chefs#new
# chefs GET    /chefs(.:format)                                                                         chefs#index
#      POST   /chefs(.:format)                                                                         chefs#create
# edit_chef GET    /chefs/:id/edit(.:format)                                                                chefs#edit
# chef GET    /chefs/:id(.:format)                                                                     chefs#show
#      PATCH  /chefs/:id(.:format)                                                                     chefs#update
#      PUT    /chefs/:id(.:format)                                                                     chefs#update
#      DELETE /chefs/:id(.:format)                                                                     chefs#destroy
# login GET    /login(.:format)                                                                         sessions#new
#      POST   /login(.:format)                                                                         sessions#create
# logout_path POST   /logout(.:format)                                                                        sessions#destroy

