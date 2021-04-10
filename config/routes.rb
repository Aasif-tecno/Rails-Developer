Rails.application.routes.draw do
  resources :profiles
  resources :jobs
  root 'home#index'
  devise_for :users
  resources :conversations do
    resources :messages
   end
  get '/developers', to: "home#developers"
  mount SimpleDiscussion::Engine => "/forum"
  put 'jobs/:id/publish', to: "jobs#publish", as: "publish"
  put 'jobs/:id/unpublish', to: "jobs#unpublish", as: "unpublish"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
