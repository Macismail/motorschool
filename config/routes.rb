Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  get 'home/index'
  get 'contacts/index'
  get 'contacts/create'

  resources :users do
    resources :lessons
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: %i[index create]
end
