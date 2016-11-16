Rails.application.routes.draw do
  get 'messages/index'

  get 'messages/new'

  get 'messages/show'

  devise_for :users
  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
