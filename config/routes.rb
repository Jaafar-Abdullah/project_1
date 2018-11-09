Rails.application.routes.draw do
  # get 'messages/show'
  # get 'messages/index'
  # get 'messages/edit'
  # get 'messages/new'
  # get 'pages/home'
  resources :messages ,:groups
  root "pages#home"
  devise_for :users
  get "user/group_message", to: "users#group_message"
  resources :users, only: [:show ,]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
