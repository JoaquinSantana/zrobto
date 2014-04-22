Rails.application.routes.draw do
	resources :tasks, expect: [:show]
	root to: 'tasks#index'
end
