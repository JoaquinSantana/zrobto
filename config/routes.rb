Rails.application.routes.draw do
  devise_for :users
	resources :tasks, expect: [:show] do
		member do
			patch :gotowe
		end
	end
	root to: 'tasks#index'
end
