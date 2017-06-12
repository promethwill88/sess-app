Rails.application.routes.draw do
	root to: 'users#index'
	# Users
	get '/users/new', to: 'users#new', as: 'new_user'
	post '/users', to: 'users#create'
	get '/users/:id', to: 'users#show', as: 'user'
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	post '/sessions', to: 'sessions#create'
	# Tracks
	get '/tracks', to: 'tracks#index'
	get '/tracks/new', to: 'tracks#new', as: 'new_track'
	post '/tracks', to: 'tracks#create'
	get 'tracks/:id', to: 'tracks#show', as: 'track'
	get 'tracks/:id/edit', to: 'tracks#edit', as: 'edit_track'
	delete '/tracks/:id', to: 'tracks#destroy'

end
