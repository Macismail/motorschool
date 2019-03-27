Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  get 'home/index'
  get 'contacts/index'
  get 'contacts/create'
  get 'lessons/index'
  get 'lessons/show'
  get 'lessons/new'
  get 'lessons/edit'

  resources :users do
    resources :lessons
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: %i[index create]
end
