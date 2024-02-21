Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/about', to: 'pages#about'
  get '/books', to: 'books#index'
  get '/plays', to: 'plays#index'
  get '/journalism', to: 'journalism#index'
  get '/theatreoutsidelondon', to: 'theatreoutsidelondon#index'
  get '/coldwartheatre', to: 'coldwartheatre#index'
  get '/erotictheatre', to: 'erotictheatre#index'
  get '/isshakespearestillourcontemporary', to: 'isshakespearestillourcontemporary#index'
  get '/missingthepoint', to: 'missingthepoint#index'
  get '/postwarbritishtheatre', to: 'postwarbritishtheatre#index'
  get '/stateofparalysis', to: 'stateofparalysis#index'
  get '/thehistoryofthenationaltheatre', to: 'thehistoryofthenationaltheatre#index'
  get '/bigdada', to: 'bigdada#index'
  get '/slidingscales', to: 'slidingscales#index'
  get '/worldwithoutworship', to: 'worldwithoutworship#index'
  get '/peacemaker', to: 'peacemaker#index'
  get '/maui', to: 'maui#index'
  get '/onemorebull', to: 'onemorebull#index'
  get '/thewellintentionedbuilder', to: 'thewellintentionedbuilder#index'
  get '/malonedies', to: 'malonedies#index'
  get '/heddagabler', to: 'heddagabler#index'
  get '/themanofthefutureisdead', to: 'themanofthefutureisdead#index'
  get '/secondtimeround', to: 'secondtimeround#index'
  get '/oldboy', to: 'oldboy#index'
  get '/worldwithin', to: 'worldwithin#index'
  get '/thelondonmag', to: 'thelondonmag#index'
  get '/thelistener', to: 'thelistener#index'
  get '/worldandi', to: 'worldandi#index'
  get '/contreview', to: 'contreview#index'
  get '/nfixabode', to: 'nfixabode#index'
  get '/random', to: 'randomcontemplation#index'
  get '/thebiggrey', to: 'thebiggrey#index'
  get '/lordsofmisrules', to: 'lordsofmisrules#index'
  get '/paintedtunnels', to: 'paintedtunnels#index'
  get '/brittlelanguages', to: 'brittlelanguages#index'
  get '/thewindingprocess', to: 'thewindingprocess#index'
  get '/thegloryofwhosegardens', to: 'thegloryofwhosegardens#index'
  get '/themuddledmindofmrhurd', to: 'themuddledmindofmrhurd#index'
  get '/sirkeithattheramparts', to: 'sirkeithattheramparts#index'
  get '/streamsoflights', to: 'streamsoflights#index'
  get '/dancingwithswords', to: 'dancingwithswords#index'
  get '/samuelbeckettmaxwallandme', to: 'samuelbeckettmaxwallandme#index'
  get '/orwellinsuffolk', to: 'orwellinsuffolk#index'
  get '/cinderella', to: 'cinderella#index'
  get '/spring', to: 'spring#index'
  get '/tomergeornottomerge', to: 'tomergeornottomerge#index'
  get '/theendoftheabsurd', to: 'theendoftheabsurd#index'
  get '/changingframes', to: 'changingframes#index'
  get '/citiesthatshuntheartists', to: 'citiesthatshuntheartists#index'
  get '/canwechangeourminds', to: 'canwechangeourminds#index'
  get '/ministernonquantumshift', to: 'ministernonquantumshift#index'
  get '/friendsfamily', to: 'friendsfamily#index'
  get '/yourshire', to: 'yourshire#index'

  get '/contactform', to: 'correspondence#index'
  post '/correspondences', to: 'correspondence#create'
  get '/emailform', to: 'emails#new'
  resources :correspondences
  resources :email
  resources :emails

  resources :friendsfamily do
    post :insert_credits, on: :collection
  end
end
