Rails.application.routes.draw do
  resources :instructors do
    collection do
      get :search
    end
  end
  devise_for :users

  root 'home#index'
  get 'home/index'
  get 'home/set_cookie'
  get 'home/show_cookie'
  get 'home/delete_cookie'
  get 'contacts/index'
  get 'contacts/create'

  resources :users do
    resources :lessons
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: %i[index create]
end
