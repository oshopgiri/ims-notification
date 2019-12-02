Rails.application.routes.draw do
	root to: 'tests#index'
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

	resources :tests, only: %i{index}

	namespace :api do
		namespace :v1 do
			resources :notifications
			resources :templates
		end
	end
end
