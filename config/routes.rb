Rails.application.routes.draw do
  # get 'activities/index'
  devise_for :users
  root to: "activities#index"
  resources :activities, only: [:new, :create, :show, :edit, :update]
  resources :reports, only: [:new, :create, :show, :edit, :update]
end
