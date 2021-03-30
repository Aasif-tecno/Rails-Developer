Rails.application.routes.draw do
  resources :jobs
  root 'home#index'
  devise_for :users
  mount SimpleDiscussion::Engine => "/forum"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
