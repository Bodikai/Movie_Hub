Rails.application.routes.draw do
#	get 'welcome/index'

	resources :movies

 	root 'welcome#index'
# 	root 'hub/index'

	get '/watched_movies/:watched_filter' => 'movies#index', as: 'watched_movies'

	get 'index_watched', controller: 'movies', to:'index_watched.html.erb'
	get 'index_unwatched', controller: 'movies', to:'index_unwatched.html.erb'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
