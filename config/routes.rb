Rails.application.routes.draw do
	resources :tasks
	root to: 'high_voltage/pages#show', id: 'home'
end
