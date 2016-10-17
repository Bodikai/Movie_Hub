Rails.application.routes.draw do
#	get 'welcome/index'

	resources :movies

 	root 'welcome#index'
# 	root 'hub/index'

	get '/watched_movies/:watched_filter' => 'movies#index', as: 'watched_movies'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
