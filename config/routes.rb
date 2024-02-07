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
  get '/friendsfamily', to: 'friendsfamily#index'
  get '/contreview/minister_non_quantum_shift', to: 'contreview#minister_non_quantum_shift'
  get '/contreview/minister_non_quantum_shift.pdf', to: 'contreview#minister_non_quantum_shift', as: 'minister_non_quantum_shift_pdf'
  get '/contreview/brittle_language.pdf', to: 'contreview#brittle_language', as: 'brittle_language_pdf'
  get '/contreview/the_wilding_process.pdf', to: 'contreview#the_wilding_process', as: 'the_wilding_process_pdf'
  get '/contreview/cities_that_shun_the_artist.pdf', to: 'contreview#cities_that_shun_the_artist', as: 'cities_that_shun_the_artist_pdf'
  get '/contreview/streams_of_light.pdf', to: 'contreview#streams_of_light', as: 'streams_of_light_pdf'
  get '/contreview/sir_keith_at_the_rampart.pdf', to: 'contreview#sir_keith_at_the_rampart', as: 'sir_keith_at_the_rampart_pdf'
  get '/contreview/the_muddled_mind_of_mr_hurd.pdf', to: 'contreview#the_muddled_mind_of_mr_hurd', as: 'the_muddled_mind_of_mr_hurd_pdf'
  get '/contreview/the_glory_of_whose_garden.pdf', to: 'contreview#the_glory_of_whose_garden', as: 'the_glory_of_whose_garden_pdf'
  get '/contreview/can_we_change_our_minds.pdf', to: 'contreview#can_we_change_our_minds', as: 'can_we_change_our_minds_pdf'
  get '/contreview/the_big_grey.pdf', to: 'contreview#the_big_grey', as: 'the_big_grey_pdf'
  get '/contreview/lords_of_misrule.pdf', to: 'contreview#lords_of_misrule', as: 'lords_of_misrule_pdf'
  get '/contreview/painted_tunnel.pdf', to: 'contreview#painted_tunnel', as: 'painted_tunnel_pdf'
  get '/contreview/to_merge_or_not_merge.pdf', to: 'contreview#to_merge_or_not_merge', as: 'to_merge_or_not_merge_pdf'
  get '/contreview/the_end_of_the_absurd.pdf', to: 'contreview#the_end_of_the_absurd', as: 'the_end_of_the_absurd_pdf'
  get '/contreview/spring.pdf', to: 'contreview#spring', as: 'spring_pdf'
  get '/contreview/orwell_in_suffolk.pdf', to: 'contreview#orwell_in_suffolk', as: 'orwell_in_suffolk_pdf'
  get '/contreview/samuel_beckett_max_wall_and_me.pdf', to: 'contreview#samuel_beckett_max_wall_and_me', as: 'samuel_beckett_max_wall_and_me_pdf'
  get '/contreview/cinderella.pdf', to: 'contreview#cinderella', as: 'cinderella_pdf'
  get '/contreview/dancing_with_swords.pdf', to: 'contreview#dancing_with_swords', as: 'dancing_with_swords_pdf'
  get '/contreview/changing_frames.pdf', to: 'contreview#changing_frames', as: 'changing_frames_pdf'
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
