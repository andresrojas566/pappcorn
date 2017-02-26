Rails.application.routes.draw do
  resources :people
  devise_for :users
  	# get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'people#index'
   #root 'users#new'
end
