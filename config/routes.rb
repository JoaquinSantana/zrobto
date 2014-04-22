Rails.application.routes.draw do
  devise_for :users
	resources :tasks, expect: [:show]
	root to: 'tasks#index'
end
