Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/about', to: 'pages#about'
  get '/books', to: 'books#index'
  get '/plays', to: 'plays#index'
  get '/theatreoutsidelondon', to: 'theatreoutsidelondon#index'
  get '/coldwartheatre', to: 'coldwartheatre#index'
  get '/erotictheatre', to: 'erotictheatre#index'
  get '/isshakespearestillourcontemporary', to: 'isshakespearestillourcontemporary#index'
  get '/missingthepoint', to: 'missingthepoint#index'
  get '/postwarbritishtheatre', to: 'postwarbritishtheatre#index'
  get '/stateofparalysis', to: 'stateofparalysis#index'
  get '/thehistoryofthenationaltheatre', to: 'thehistoryofthenationaltheatre#index'
  get 'bigdada', to: 'bigdada#index'
  get 'slidingscales', to: 'slidingscales#index'
  get 'worldwithoutworship', to: 'worldwithoutworship#index'
end
