Rails.application.routes.draw do
  resources :stocks
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'home/index'
  root 'home#index'

  post "/" => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
