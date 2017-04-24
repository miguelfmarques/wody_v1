Rails.application.routes.draw do
  resources :legal_people
  resources :people
  devise_for :users
  get 'home/index'
  root 'home#index'

  resources :athletes
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
