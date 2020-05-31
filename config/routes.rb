Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home', to: 'pages#home'

  
  resources :recipes do
    collection do
      get :find
      post :findby_name
    end
  end
    

  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
end


 # create a form for findby_name 
 # Create a post request for recipes/findby_name
 # form which takes input of recipe name and sends post request to findby_name controller
 # post '/recipes/findby_name', to: 'recipes#findby_name'
 # Use the post request params and find that recipe in the db by name
 # After finding the recipe you use the id of the recipe and redirect to the show page

